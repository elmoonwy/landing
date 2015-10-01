class CreateStateReportings < ActiveRecord::Migration
  def change
    create_table :state_reporting do |t|
      t.integer :report_id
      t.string :transaction_result
      t.string :transaction_state
      t.string :transaction_medication
      t.integer :transaction_count
      t.datetime :report_time
      t.integer :last_id
      t.timestamps
    end
  end
end
