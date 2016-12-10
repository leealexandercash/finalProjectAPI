class ListingSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :price, :description, :image
  has_one :user
  has_one :place

  def image
    object.image.url
  end
end
