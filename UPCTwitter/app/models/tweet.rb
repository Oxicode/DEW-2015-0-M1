OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
class Tweet < ActiveRecord::Base
     def initialize(params={})    
    @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ""
    config.consumer_secret     = ""
    config.access_token        = ""
    config.access_token_secret = ""  
    end
	super
  end 
  
  
  def read_message
    return "No hay usuario" if self.user.blank?
    @client.user_timeline(self.user).first.text
  end
  
  def show_message_by_url
    return "URL no existente" if self.url.blank?
    @client.status(self.url)
  end
  
  def update_status
  	return "sin update" if self.message.blank?
  	@client.update(self.message)
  end
end
