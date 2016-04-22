class AddBust3ToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :bust3, :string
  end
end
