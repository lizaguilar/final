class AddImage4ToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :image4, :string
  end
end
