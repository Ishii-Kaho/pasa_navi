class CreatePasas < ActiveRecord::Migration[5.2]
  def change
    create_table :pasas do |t|

      t.string :facility,    null: false, default: "0"
      t.string :prefecture,    null: false, default: "0"
      t.string :highway_name,    null: false, default: "0"

      t.timestamps
    end
  end
end