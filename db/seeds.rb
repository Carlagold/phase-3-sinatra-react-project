puts '🌱 Seeding spices...'

# Seed your database here

user_1 = User.create(first_name: 'Fabricio', last_name: 'TS', username: 'thegamer', password: '&YXQg2qRj')
user_2 = User.create(first_name: 'Franco', last_name: 'FS', username: 'dogecoin', password: '4Z#^YrnPX')
user_3 = User.create(first_name: 'Andre', last_name: 'FS', username: 'todamoon', password: 'vXU7Nv^au')
Income.create(income_input1: 6759, income_input2: 4210, user_id: user_1.id)
# binding.pry
Income.create(income_input1: 3150, income_input2: 1622,  user_id: user_2.id)
Income.create(income_input1: 3645, income_input2: 2891,  user_id: user_3.id)
HomeExpense.create(mortgage_rent: 2645, electric: 240, gas: 210, water_sewer_trash: 320, internet_cable: 150, home_supplies: 180, home_repairs: 423, user_id: user_1.id)
HomeExpense.create(mortgage_rent: 1945, electric: 210, gas: 190, water_sewer_trash: 160, internet_cable: 90, home_supplies: 251, home_repairs: 0, user_id: user_2.id)
HomeExpense.create(mortgage_rent: 2670, electric: 284, gas: 275, water_sewer_trash: 360, internet_cable: 121, home_supplies: 243, home_repairs: 87, user_id: user_3.id)
TransportExpense.create(gas: 654, tolls_fares: 156, auto_repairs: 459, user_id: user_1.id)
TransportExpense.create(gas: 357, tolls_fares: 0, auto_repairs: 0, user_id: user_2.id)
TransportExpense.create(gas: 410, tolls_fares: 40, auto_repairs: 1605, user_id: user_3.id)
LivingExpense.create(clothing: 280, cell_phone: 280, hair_personal_care: 350, child_care: 800, user_id: user_1.id)
LivingExpense.create(clothing: 150, cell_phone: 190, hair_personal_care: 264, child_care: 0, user_id: user_2.id)
LivingExpense.create(clothing: 300, cell_phone: 90, hair_personal_care: 190, child_care: 550, user_id: user_3.id)

puts '✅ Done seeding!'
