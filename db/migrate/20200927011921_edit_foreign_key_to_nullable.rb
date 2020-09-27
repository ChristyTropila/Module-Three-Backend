class EditForeignKeyToNullable < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :collection_board_id, :bigint, :null => true

  end
end
