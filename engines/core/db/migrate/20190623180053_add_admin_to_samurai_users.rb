class AddAdminToSamuraiUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :samurai_users, :manager, :boolean
  end
end
