class AddRoleToSamuraiUser < ActiveRecord::Migration[6.0]
  def change
    add_column :samurai_users, :role, :integer, default: 0
  end
end
