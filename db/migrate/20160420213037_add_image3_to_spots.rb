class AddImage3ToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :image3, :string
  end
end
