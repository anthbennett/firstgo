# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

	ItemType.create(name: '	Advertising for Tenants	', is_income: true)
	ItemType.create(name: '	Body Corporate Fees 	', is_income: true)
	ItemType.create(name: '	Borrowing Expenses 	', is_income: false)
	ItemType.create(name: '	Cleaning	', is_income: false)
	ItemType.create(name: '	Council Rates	', is_income: false)
	ItemType.create(name: '	Capital Allowances (Depreciation on Plant)	', is_income: false)
	ItemType.create(name: '	Gardening/ Lawn Mowing	', is_income: false)
	ItemType.create(name: '	Insurance	', is_income: false)
	ItemType.create(name: '	Interest on Loan (s)	', is_income: false)
	ItemType.create(name: '	Land Tax	', is_income: false)
	ItemType.create(name: '	Legal Fees	', is_income: false)
	ItemType.create(name: '	Pest Control	', is_income: false)
	ItemType.create(name: '	Property Agent Fees/ Commission	', is_income: false)
	ItemType.create(name: '	Repairs & Maintenance	', is_income: false)
	ItemType.create(name: '	Capital Works Deduction (Special Building Write Off)	', is_income: false)
	ItemType.create(name: '	Stationery, Telephone and Postage	', is_income: false)
	ItemType.create(name: '	Travel Expenses	', is_income: false)
	ItemType.create(name: '	Water Charges	', is_income: false)
	ItemType.create(name: '	Sundry Rental Expenses	', is_income: false)