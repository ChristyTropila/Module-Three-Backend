class User < ApplicationRecord
    has_many :collection_boards
    validates :name, presence: {message: 'Please Provide Your Name'}
    validates :username, presence: true, uniqueness: {
        message: ->(object, data)do
        "Hey #{object.name}!, #{data[:value]} is taken already! Try Again!"
    end
    }

        
end