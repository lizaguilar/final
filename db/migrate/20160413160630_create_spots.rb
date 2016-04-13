class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.text :description
      t.string :borough

      t.timestamps null: false
    end
  end
end
