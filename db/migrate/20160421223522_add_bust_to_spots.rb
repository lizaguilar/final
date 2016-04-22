class AddBustToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :bust, :string
  end
end
