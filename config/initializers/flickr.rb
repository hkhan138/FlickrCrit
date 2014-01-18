#require 'flickraw'

#FlickRaw.api_key="2a65782ace678d0ba57d6490752f912b"
#FlickRaw.shared_secret="1e3e6fe3fd0b67f6"

#token = flickr.get_request_token(:perms => 'write')
#auth_url = token['oauth_authorize_url']

#puts "Open this url in your process to complete the authication process : #{auth_url}"
#puts "Copy here the number given when you complete the process."
#verify = gets.strip

#begin
 # flickr.get_access_token(token['oauth_token'], token['oauth_token_secret'], verify)
  #login = flickr.test.login
  #puts "You are now authenticated as #{login.username}"
#rescue FlickRaw::FailedResponse => e
 # puts "Authentication failed : #{e.msg}"
#end