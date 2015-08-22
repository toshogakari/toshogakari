class Book < ActiveRecord::Base
  # model relation
  has_many :books_users
  has_many :users, through: :books_users

end
