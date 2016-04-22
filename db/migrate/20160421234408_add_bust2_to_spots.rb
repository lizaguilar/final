class AddBust2ToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :bust2, :string
  end
end
