User.create(
  email: 'jacob@email.com',
  name: 'Jacob',
  password: 'password'
)


SubCategory.create(
    name: 'Mortgage/Rent'
)
SubCategory.create(
    name: 'Utilities'
)
SubCategory.create(
    name: 'Food'
)
SubCategory.create(
    name: 'Auto Gas'
)
SubCategory.create(
    name: 'Auto Insurance'
)
SubCategory.create(
    name: 'Phone'
)
SubCategory.create(
    name: 'Internet'
)
SubCategory.create(
    name: 'Give'
)
SubCategory.create(
    name: 'Save'
)
SubCategory.create(
    name: 'Fun Money'
)

Income.create(
    date: '2017-22-12',
    amount: "1500",
    income_source_id: 1
)

IncomeSource.create(
  name: "Job 1",
)

IncomeSource.create(
  name: "Job 2",
)

10.times do
  Outgo.create(
    date: Faker::Time.between(DateTime.now - 29, DateTime.now-1),
    amount: Faker::Number.between(1, 35),
    recipient: Faker::Job.field,
    sub_category_id:Faker::Number.between(1,10),
  )
end
