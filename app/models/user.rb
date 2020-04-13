class User < ApplicationRecord
  has_many :pics, dependent: :destroy
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true
  validates :email, presence: true, format: {with: EMAIL_FORMAT}, uniqueness: true
  validates :username, presence: true, uniqueness: true, length: { minimum: 6, maximum: 10 }


  before_save { self.email = email.downcase }
   #built in rails method
  has_secure_password
end
