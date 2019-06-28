class CreateSamuraiContactsRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :samurai_contacts_relations do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone
      t.belongs_to :samurai_users, foreign_key: true

      t.timestamps
    end
  end
end
