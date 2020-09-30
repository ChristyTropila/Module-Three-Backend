class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name,:url, :description, :location, :category,:image, :collection_board_id
  # has_one :category_id
  # has_one :collection_board_id
end
