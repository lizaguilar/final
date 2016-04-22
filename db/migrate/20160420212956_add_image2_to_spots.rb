class AddImage2ToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :image2, :string
  end
end
