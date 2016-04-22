class AddImage1ToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :image1, :string
  end
end
