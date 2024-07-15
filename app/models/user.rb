class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  validates :name, :email, :password, presence: { message: 'は必須項目です。' }

end
