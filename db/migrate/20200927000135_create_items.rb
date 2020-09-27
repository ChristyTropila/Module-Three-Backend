class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :url
      t.string :description
      t.string :location
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :collection_board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
