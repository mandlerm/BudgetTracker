User.create(
  email: 'jacob@email.com'
  first_name: 'Jacob'
)

Budget.create(
  month_year: 'December'
  user_id: 1
)

SpendingCategory.create(
    name: 'Mortgage/Rent'
)
SpendingCategory.create(
    name: 'Utilities'
)
SpendingCategory.create(
    name: 'Food'
)
SpendingCategory.create(
    name: 'Auto Gas'
)
SpendingCategory.create(
    name: 'Auto Insurance'
)
SpendingCategory.create(
    name: 'Phone'
)
SpendingCategory.create(
    name: 'Internet'
)
SpendingCategory.create(
    name: 'Give'
)
SpendingCategory.create(
    name: 'Save'
)
SpendingCategory.create(
    name: 'Fun Money'
)

Income.create(
    name: "Work"
    amount: "1500"
    source_id: 1
    budget_id: 1
)

IncomeSource.create(
  name: "Job"
)

10.times do
  Outgo.create(
    date: Faker::Time.between(DateTime.now - 29, DateTime.now-1)
    amount: Faker::Number.between(1, 35)
    location: Faker::Job.field
    category_id:Faker::Number.between(1,10)
    budget_id: 1
  )
  Category.create(title: Faker::Commerce.department)
end
