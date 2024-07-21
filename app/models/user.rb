class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  validates :name,                presence: true,
                                  length: { maximum: 50 }

  validates :email,               presence: true,
                                  uniqueness: true

  validates :password,            presence: true

end
