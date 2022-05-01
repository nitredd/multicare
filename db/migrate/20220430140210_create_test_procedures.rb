class CreateTestProcedures < ActiveRecord::Migration[7.0]
  def change
    create_table :test_procedures do |t|
      t.string :name
      t.references :department, null: false, foreign_key: true
      t.references :matter_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
