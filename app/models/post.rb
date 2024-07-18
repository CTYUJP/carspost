class Post < ApplicationRecord

  belongs_to :user

  validates :text, presence: true, length: { maximum: 140 }
  # validates :image, presence: true

end
