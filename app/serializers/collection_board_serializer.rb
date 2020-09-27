class CollectionBoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at
  has_one :user_id
end
