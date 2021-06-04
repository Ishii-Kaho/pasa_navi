class CreatePasas < ActiveRecord::Migration[5.2]
  def change
    create_table :pasas do |t|

      t.string :facility
      t.string :prefecture
      t.string :visit_weekday

      t.timestamps
    end
  end
end