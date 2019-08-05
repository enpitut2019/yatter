class AddTypeToReactions < ActiveRecord::Migration[5.2]
  def change
    add_column :reactions, :emotion, :integer, default: 0
    add_reference :reactions, :post, foreign_key:true
    add_reference :reactions, :user, foreign_key:true
  end
end
