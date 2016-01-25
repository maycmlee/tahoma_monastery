class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.integer :person_id
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
