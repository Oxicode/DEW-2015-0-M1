class Message < ActiveRecord::Base
  Pusher.app_id = 105925
  Pusher.key = 'c3d762824583fa9cc453'
  Pusher.secret = '33239ee0daf01a08f32e'
  
  after_create :send_to_pusher
  
  def send_to_pusher
    logger.info "Hi?"
    Pusher['DEW2015'].trigger("message:create", self.to_json)
  end
  
  
end
