Dir["./models/*.rb"].each { |file| require file }

User.create(username: 'test', password: 'test')
=begin
Account.create(name: 'BOA Checking')
Account.create(name: 'BOA Savings')
Account.create(name: 'BOA MasterCard')

Transaction.create(merchant: 'Brooklyn Museum', date: '2019-01-03', amount: 1000.00, account_id: 1, credit: true)
Transaction.create(merchant: 'Greenpoint Beer & Ale', date: '2019-01-01', amount: 1.00, account_id: 1, credit: false)
Transaction.create(merchant: 'Solid State', date: '2019-01-02', amount: 0.01, account_id: 1, credit: false)
Transaction.create(merchant: 'BOA Checking', date: '2019-01-03', amount: 1000.00, account_id: 2, credit: true)
Transaction.create(merchant: 'BOA Checking', date: '2019-01-01', amount: 2.00, account_id: 2, credit: true)
Transaction.create(merchant: 'BOA Checking', date: '2019-01-02', amount: 0.02, account_id: 2, credit: true)
Transaction.create(merchant: 'Greenpoint Beer & Ale', date: '2019-01-03', amount: 1000.00, account_id: 3, credit: false)
Transaction.create(merchant: 'Solid State', date: '2019-01-01', amount: 3.00, account_id: 3, credit: false)
Transaction.create(merchant: 'Greenpoint Beer & Ale', date: '2019-01-02', amount: 0.03, account_id: 3, credit: false)

BillFrequency.create(name: "Once")
BillFrequency.create(name: "Daily")
BillFrequency.create(name: "Weekly")
BillFrequency.create(name: "Bi-Weekly")
BillFrequency.create(name: "Monthly")
BillFrequency.create(name: "Yearly")

Bill.create(description: "AT&T Wireless", bill_frequency_id: 5)
Bill.create(description: "Rent", bill_frequency_id: 5)
Bill.create(description: "BOA Credit Card Payment", bill_frequency_id: 1)
Bill.create(description: "Band Rent", bill_frequency_id: 5)
Bill.create(description: "Brooklyn Museum", bill_frequency_id: 4)
=end