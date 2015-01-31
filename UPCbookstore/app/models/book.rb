class Book < ActiveRecord::Base
  belongs_to :author
  has_many :client_books
  has_many :clients, :through => :client
end
