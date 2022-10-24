puts "🌱 Seeding spices..."

# Seed your database here
User.create(first_name: "Fabricio", last_name: "TS", username: "thegamer", password: "&YXQg2qRj")
User.create(first_name: "Franco", last_name: "FS", username: "dogecoin", password: "4Z#^YrnPX")
User.create(first_name: "Andre", last_name: "FS", username: "todamoon", password: "vXU7Nv^au")
Income.create(income_input1: 6759, income_input2: 4210)
Income.create(income_input1: 3150, income_input2: 1622)
Income.create(income_input1: 3645, income_input2: 2891)
HomeExpense.create(mortgage_rent: 2645, electric: 240, gas: 210,water_sewer_trash: 320, internet_cable: 150, home_supplies: 180, home_repairs: 423)
HomeExpense.create(mortgage_rent: 1945, electric: 210, gas: 190,water_sewer_trash: 160, internet_cable: 90, home_supplies:251, home_repairs: 0)
HomeExpense.create(mortgage_rent: 2670, electric: 284, gas: 275,water_sewer_trash: 360, internet_cable: 121, home_supplies: 243, home_repairs: 87)
TransportExpense.create(gas:654, tolls_fares: 156 , auto_repairs: 459)
TransportExpense.create(gas:357, tolls_fares: 0 , auto_repairs: 0)
TransportExpense.create(gas:410, tolls_fares: 40 , auto_repairs: 1605)
LivingExpense.create(clothing: 280, cell_phone: 280, hair_personal_care: 350, child_care: 800)
LivingExpense.create(clothing: 150, cell_phone: 190, hair_personal_care: 264, child_care: 0)
LivingExpense.create(clothing: 300, cell_phone: 90, hair_personal_care: 190, child_care: 550)


puts "✅ Done seeding!"
