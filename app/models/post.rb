class Post < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  validates :text, presence: true, length: { maximum: 140 }, unless: :was_attached?
  validate :image_type

  def was_attached?
    image.attached?
  end

  private

  def image_type
    if image.attached?
      unless image.content_type.in?(%w(image/jpeg image/png))
        errors.add(:image, 'must be a JPEG or PNG')
      end
    end
  end
end