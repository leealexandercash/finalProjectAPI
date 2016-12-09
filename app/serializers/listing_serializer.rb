class ListingSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :price, :description
  has_one :user
  has_one :place
end
