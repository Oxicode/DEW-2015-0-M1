class Tweet < ActiveRecord::Base
    def initialize(params = {})
        @client = Twitter::REST::Client.new do |config|
            config.consumer_key        = "00NACY65HaQVpA09ZMO9yDzvA"
            config.consumer_secret     = "IcUIVH6uiht1VTS5UHK2E7Bt3b1vddeUmgZKYhAoplylp0EQ7U"
            config.access_token        = "2435655612-jPO0cs7tFsMxE8TIRotREeCrzwCMCwFhsdGKWlB"
            config.access_token_secret = "tqJtwGfYOojZu186Qp7f2LOsImp7rVMJ4YnGDHTJzsgSe"
        end
        super
    end
    
    def read_message
        return "No hay usuario" if self.user.blank?
        @client.user_timeline(self.user).first.text
    end

end
