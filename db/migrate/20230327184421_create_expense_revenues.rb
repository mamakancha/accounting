class CreateExpenseRevenues < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_revenues do |t|
      t.decimal :amount
      t.references :category, null: false, foreign_key: true
      t.references :monthly_report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
