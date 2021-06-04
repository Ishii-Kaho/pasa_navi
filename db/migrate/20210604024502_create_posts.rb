class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.integer :user_id
      t.integer :pasa_id
      t.integer :genre_id
      t.string :prefecture
      t.string :highway_name
      t.integer :cleanliness
      t.integer :congestion
      t.integer :satisfaction
      t.timestamp :visit_time
      t.string :visit_weekday
      t.string :image_id
      t.text :opinion

      t.timestamps
    end
  end
end
