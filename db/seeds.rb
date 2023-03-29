# Clear existing data
Category.delete_all
ExpenseRevenue.delete_all
MonthlyReport.delete_all
FiscalYear.delete_all
Company.delete_all

# Create Categories
categories = [
  { name: 'Office Supplies' },
  { name: 'Rent' },
  { name: 'Utilities' },
  { name: 'Salaries' },
  { name: 'Marketing' }
]

categories.each { |category| Category.create!(category) }

# Create a Company
company = Company.create!(
  name: 'Example Inc.',
  email: 'example@example.com',
  password: 'password123'
)

fiscal_year = FiscalYear.create!(
  company: company,
  year: 2022
)


# Create Monthly Reports
(1..12).each do |month|
  MonthlyReport.create!(
    fiscal_year: fiscal_year,
    month: month
  )
end

# Create Expense Revenues
monthly_reports = MonthlyReport.all
categories = Category.all

monthly_reports.each do |monthly_report|
  categories.each do |category|
    ExpenseRevenue.create!(
      monthly_report: monthly_report,
      category: category,
      amount: rand(500..5000)
    )
  end
end
