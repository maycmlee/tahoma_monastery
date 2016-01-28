class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
      t.integer :user_id
      t.integer :retreat_application_id
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
