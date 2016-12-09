class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :google_place_id, :address, :phone_number, :lat, :lng, :icon, :name, :rating, :website
end
