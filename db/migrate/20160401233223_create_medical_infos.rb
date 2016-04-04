class CreateMedicalInfos < ActiveRecord::Migration
  def change
    create_table :medical_infos do |t|
      t.integer :trainee_id
      t.boolean :special_medical_needs
      t.string  :medical_needs_note
      t.boolean :serious_allergies
      t.string :allergies_note

      t.timestamps null: false
    end
  end
end
