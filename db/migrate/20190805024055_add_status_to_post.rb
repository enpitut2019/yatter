class AddStatusToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :status, :integer
    add_reference :posts, :user, foreign_key:true
  end
end
