class CreateSesshins < ActiveRecord::Migration
  def change
    create_table :sesshins do |t|
      t.string :start_date
      t.string :end_date

      t.timestamps null: false
    end
  end
end
