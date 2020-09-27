class User < ApplicationRecord
    has_many :collection_boards
    validates :name, presence: true
    validates :username, presence: true
end
