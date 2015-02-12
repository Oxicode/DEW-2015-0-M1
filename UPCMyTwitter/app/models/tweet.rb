class Tweet < ActiveRecord::Base
  def initialize(params ={})
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "UgV1xvQTDwIsWTxaGR1RLIkdt"
      config.consumer_secret     = "s0XpyLDY2RDnGBMET08TcmaU0MG7RiFAyWcrtTSSgMpFrEBhGz"
      config.access_token        = "344334932-Bgi21Ujvdm4gk4Ij3IR9Nl9VUApJooAvNC9l7BuU"
      config.access_token_secret = "MlGjgPZC0j3rfvL7v2tghEvQy7EfDZHaMnhaB0Wdm9zS4"
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
    return "No hay status" if self.message.blank?
    @client.update(self.message)
  end
  
end
