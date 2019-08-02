class RemoveOwnerFromProjects < ActiveRecord::Migration[5.2]
  def up
    remove_column :projects, :owner
  end
  def down
    add_column :projects, :owner, :string
  end
end
