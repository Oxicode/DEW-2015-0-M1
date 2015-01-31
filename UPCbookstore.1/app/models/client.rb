class Client < ActiveRecord::Base
    has_many :client_books
    has_many :books, :through => :client_books
end