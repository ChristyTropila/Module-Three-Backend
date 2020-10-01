class CollectionBoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :items, :user_id
  
  has_many :items
end
