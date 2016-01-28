class CreateFinancialInfos < ActiveRecord::Migration
  def change
    create_table :financial_infos do |t|
      t.integer :trainee_id
      t.integer :retreat_application_id
      t.boolean :need_aid
      t.float :amt_aid_needed
      t.boolean :deposit_received
      t.float :total_payment_received

      t.timestamps null: false
    end
  end
end
