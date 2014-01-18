class FlickrController < ApplicationController

  layout 'main'
  
  def index
    get_and_render
  end
  
  def show
    get_photos
  end
  
  def scroll_right
    @session[:flickr_page] += 1
    get_and_render
  end
  
  def scroll_left
    if @session[:flickr_page] > 1
      @session[:flickr_page] -= 1 
      get_and_render
    end  
  end
  
  def toggle_display
    @session[:flickr_display] = !@session[:flickr_display]
    get_and_render
  end
  
  def get_and_render
    get_photos
    render :partial => 'flickr_photo_bar', :no_layout => true
  end

private
  def get_photos
    @session[:flickr_page] ||= 1
    @session[:flickr_per_page] ||= 6
    @session[:flickr_display] ||= false

    if @session[:flickr_display]
      @my_flickr ||= MyFlickr.new
      @photos = @my_flickr.my_search(MY_CONFIG[:flickr_id], @session[:flickr_per_page], @session[:flickr_page])
    end  
  end

  
end