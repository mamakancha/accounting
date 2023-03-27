class CreateFiscalYears < ActiveRecord::Migration[7.0]
  def change
    create_table :fiscal_years do |t|
      t.integer :year
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
