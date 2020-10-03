class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :title
      t.text :content
      t.text :spot_address
      t.integer :category

      t.timestamps
    end
  end
end
