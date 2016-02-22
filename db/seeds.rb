# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

retailer = Retailer.create( first_name: "Suyesh", 
	                        last_name: "Bhandari", 
	                        phone_number: "2129867890", 
	                        cell_number: "2123456789", 
	                        tax_id: "12345678", 
	                        business_name: "Simact.me LLC", 
	                        address1: "40-20 Nintendo st",
	                        address2: "",
	                        city: "New york",
	                        state: "NY",
	                        zip_code: "11104",
	                        years_in_business: "3",
	                        email: "suyesh@gmail.com",
	                        password: "password",
	                        password_confirmation: "password"
	                      )


supplier = Supplier.create( first_name: "Mohammad", 
	                        last_name: "Nasr", 
	                        phone_number: "2129458790", 
	                        cell_number: "2129458790", 
	                        tax_id: "12345678", 
	                        business_name: "Mofuel.me LLC", 
	                        address1: "40-50 Casio st",
	                        address2: "",
	                        city: "New york",
	                        state: "NY",
	                        zip_code: "11104",
	                        years_in_business: "3",
	                        email: "mo@gmail.com",
	                        password: "password",
	                        password_confirmation: "password"
	                      )

base_price = BasePrice.create(
	                           b_85: 1.0,
	                           b_87: 1.0,
	                           b_91: 1.0,
	                           b_93: 1.0,
	                           b_diesel: 1.0,
	                           b_offroad: 1.0,
	                           supplier_id: Supplier.first.id

	                          )

relation = Relation.create(
	                       supplier_id: Supplier.first.id,
	                       retailer_id: Retailer.first.id,
	                       f_85: 1.0,
	                       f_87: 1.0,
	                       f_91: 1.0,
	                       f_93: 1.0,
	                       f_diesel: 1.0,
	                       f_offroad: 1.0
	                      )

station = Station.create(
	                     brand: "Exxon",
	                     business_name: "Shahid da station",
	                     tin: "12345678",
	                     phone_number: "2128789012",
	                     contact_person: "Shahid paji",
	                     cell_number: "212678901",
	                     address1: "40-81 Sega rd",
	                     address2: "contra",
	                     city: "Manhattan",
	                     state: "NY",
	                     zip: "11104",
	                     station_reg_number: "12334567",
	                     retailer_id: Retailer.first.id
	                    )

order = Order.create(
	                 o_85: 200,
	                 o_87: 200,
	                 o_91: 200,
	                 o_93: 200,
	                 o_diesel: 200,
	                 o_offroad: 200,
	                 retailer_id: Retailer.first.id,
	                 supplier_id: Supplier.first.id,
	                 station_id: Station.first.id
	                )