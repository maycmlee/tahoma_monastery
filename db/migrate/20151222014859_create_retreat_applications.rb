class CreateRetreatApplications < ActiveRecord::Migration
  def change
    create_table :retreat_applications do |t|
      t.integer :user_id
      t.integer :sesshin_id
      t.string :status

      t.timestamps null: false
    end
  end
end
