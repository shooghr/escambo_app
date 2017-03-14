class AddNameAndRoleToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :name, :strgin
    add_column :admins, :role, :integer
  end
end
