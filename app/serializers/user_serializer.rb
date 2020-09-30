class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :collection_boards
end
