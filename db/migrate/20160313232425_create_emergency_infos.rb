class CreateEmergencyInfos < ActiveRecord::Migration
  def change
    create_table :emergency_infos do |t|
      t.integer :trainee_id
      t.integer :retreat_application_id
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :emergency_contact_relationship

      t.timestamps null: false
    end
  end
end
