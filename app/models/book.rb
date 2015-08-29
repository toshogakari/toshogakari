class Book < ActiveRecord::Base
  # model relation
  has_many :readings
  has_many :users, through: :books_users

end
