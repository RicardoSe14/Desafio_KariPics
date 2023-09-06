class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum :role, [:normal_user, :admin]
  has_many :reactions
  has_many :comments
  has_many :articles, through: :reactions
  has_many :articles, through: :comments
  has_many_attached :images
end
