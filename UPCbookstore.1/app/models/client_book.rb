class ClientBook < ActiveRecord::Base
    belongs_to :book
    belongs_to :client
end
