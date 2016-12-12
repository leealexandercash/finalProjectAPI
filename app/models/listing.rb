class Listing < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :place, dependent: :destroy

  # validates :image, presence: true

  mount_uploader :image, ImageUploader
end
