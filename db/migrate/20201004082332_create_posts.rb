class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.date :visit_date
      t.string :content
      t.integer :user_id
      t.integer :spot_id
      t.integer :score

      t.timestamps
    end
  end
end
