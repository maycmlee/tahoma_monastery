class CreateHousingInfos < ActiveRecord::Migration
  def change
    create_table :housing_infos do |t|
      t.integer :trainee_id
      t.boolean :need_housing
      t.boolean :camping

      t.timestamps null: false
    end
  end
end
