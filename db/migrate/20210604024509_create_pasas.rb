class CreatePasas < ActiveRecord::Migration[5.2]
  def change
    create_table :pasas do |t|

      t.integer :facility,    null: false, default: "0"
      t.integer :prefecture,    null: false, default: "0"
      t.string :visit_weekday

      t.timestamps
    end
  end
end