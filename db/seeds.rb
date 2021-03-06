Dir["./models/*.rb"].each { |file| require file }

User.create(username: 'test', password: 'test')
#=begin
Account.create(name: 'BOA Checking')
Account.create(name: 'BOA Savings')
Account.create(name: 'BOA MasterCard')

Category.create(name: 'Bills')
Category.create(name: 'Credit Card Payments')
Category.create(name: 'Dining Out')
Category.create(name: 'Income')
Category.create(name: 'Miscellaneous')
Category.create(name: 'Rent')
Category.create(name: 'Transfer')

Merchant.create(name: 'Brooklyn Museum')
Merchant.create(name: 'Greenpoint Beer & Ale')
Merchant.create(name: 'Solid State')
Merchant.create(name: 'Bank of America')
Merchant.create(name: 'AT&T Wireless')
Merchant.create(name: 'Landlord')

Transaction.create(merchant_id: 1, date: '2019-01-03', amount: 1000.00, credit: true, account_id: 1, category_id: 4)
Transaction.create(merchant_id: 2, date: '2019-01-01', amount: 1.00, credit: false, account_id: 1, category_id: 3)
Transaction.create(merchant_id: 3, date: '2019-01-02', amount: 0.01, credit: false, account_id: 1, category_id: 3)
Transaction.create(merchant_id: 4, date: '2019-01-03', amount: 1000.00, credit: true, account_id: 2, category_id: 2)
Transaction.create(merchant_id: 2, date: '2019-01-03', amount: 1000.00, credit: false, account_id: 3, category_id: 3)
Transaction.create(merchant_id: 3, date: '2019-01-01', amount: 3.00, credit: false, account_id: 3, category_id: 3)
Transaction.create(merchant_id: 2, date: '2019-01-02', amount: 0.03, credit: false, account_id: 3, category_id: 3)
Transaction.create(merchant_id: 4, date: '2019-01-04', amount: 10.00, credit: false, account_id: 1, category_id: 7)
Transaction.create(merchant_id: 4, date: '2019-01-04', amount: 10.00, credit: true, account_id: 2, category_id: 7)

Bill.create(description: "Cell Phone", merchant_id: 5, frequency: 'monthly', starting_date: '2019-01-20', amount: 100.00, credit: false, account_id: 3, category_id: 1)
Bill.create(description: "Rent", merchant_id: 6, frequency: 'monthly', starting_date: '2019-01-21', amount: 1100.00, credit: false, account_id: 1, category_id: 6)
Bill.create(description: "BOA Credit Card Payment", merchant_id: 4, frequency: 'weekly', starting_date: '2019-01-22', amount: 50.00, credit: false, account_id: 1, category_id: 2)
Bill.create(description: "Paycheck", merchant_id: 1, frequency: 'bi_weekly', starting_date: '2019-01-23', amount: 1000.00, credit: true, account_id: 1, category_id: 4)
#=end