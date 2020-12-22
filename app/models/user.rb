class User < ApplicationRecord
  has_many :sessions
  has_many :tasks

  validates :username, length: { minimum: 3, maximum: 64 }, presence: true
  validates :password, length: { minimum: 8, maximum: 64 }, presence: true
  validates_uniqueness_of :username
end
