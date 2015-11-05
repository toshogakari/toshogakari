class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # model relation
  has_many :readings
  has_many :books, through: :readings

  # login getter and setter
    attr_accessor :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:login]

  #nickname is unique
  validates_uniqueness_of :nickname
  validates_presence_of :nickname


  # login as nickname or email
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["nickname = :value OR lower(email) = lower(:value)", { value: login }]).first
    else
      where(conditions).first
    end
  end
end
