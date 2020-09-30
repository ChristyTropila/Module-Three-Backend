class CollectionBoard < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :name, presence: {message: 'Please Provide A Title'}
end
