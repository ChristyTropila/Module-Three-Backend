class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :url, :description, :location
  has_one :category_id
  has_one :collection_board_id
end
