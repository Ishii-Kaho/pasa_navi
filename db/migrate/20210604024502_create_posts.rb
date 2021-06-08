class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :pasa_id
      t.integer :genre_id
      t.float :cleanliness, null: false, default: 0
      t.float :congestion, null: false, default: 0
      t.float :satisfaction, null: false, default: 0
      t.string :facility
      t.integer :prefecture, null: false
      t.integer :highway_name
      t.timestamp :visit_time
      t.string :visit_weekday
      t.string :image_id
      t.string :title
      t.text :opinion

      t.timestamps
    end
  end
end
