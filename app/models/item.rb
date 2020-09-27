class Item < ApplicationRecord
  belongs_to :category
  belongs_to :collection_board, optional: true
  
end
