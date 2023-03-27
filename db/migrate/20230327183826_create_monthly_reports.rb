class CreateMonthlyReports < ActiveRecord::Migration[7.0]
  def change
    create_table :monthly_reports do |t|
      t.integer :month
      t.references :fiscal_year, null: false, foreign_key: true

      t.timestamps
    end
  end
end
