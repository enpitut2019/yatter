class AddIineCountToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :home_point, :integer, default: 0
  end
end
