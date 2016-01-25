class CreateTrainees < ActiveRecord::Migration
  def change
    create_table :trainees do |t|
      t.integer :person_id
      t.integer :sesshin_id
      t.boolean :fulltime

      t.timestamps null: false
    end
  end
end
