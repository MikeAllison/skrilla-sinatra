Dir["./models/*.rb"].each { |file| require file }

User.create(username: 'test', password: 'test')

Account.create(name: 'BOA Checking')
Account.create(name: 'BOA Savings')
Account.create(name: 'BOA MasterCard')

Merchant.create(name: 'Brooklyn Museum')
Merchant.create(name: 'BOA Checking')
Merchant.create(name: 'Greenpoint Beer & Ale')
Merchant.create(name: 'Solid State')

Transaction.create(date: '2019-01-03', amount: 1000.00, account_id: 1, merchant_id: 1)
Transaction.create(date: '2019-01-01', amount: -1.00, account_id: 1, merchant_id: 3)
Transaction.create(date: '2019-01-02', amount: -0.01, account_id: 1, merchant_id: 4)
Transaction.create(date: '2019-01-03', amount: 1000.00, account_id: 2, merchant_id: 2)
Transaction.create(date: '2019-01-01', amount: 2.00, account_id: 2, merchant_id: 2)
Transaction.create(date: '2019-01-02', amount: 0.02, account_id: 2, merchant_id: 2)
Transaction.create(date: '2019-01-03', amount: -1000.00, account_id: 3, merchant_id: 3)
Transaction.create(date: '2019-01-01', amount: -3.00, account_id: 3, merchant_id: 4)
Transaction.create(date: '2019-01-02', amount: -0.03, account_id: 3, merchant_id: 3)

Bill.create(description: "AT&T Wireless", frequency: 4)
Bill.create(description: "Rent", frequency: 4)
Bill.create(description: "BOA Credit Card Payment", frequency: 1)
Bill.create(description: "Band Rent", frequency: 4)
Bill.create(description: "Brooklyn Museum", frequency: 3)