# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.new({ :email => "admin@serler.com", :password => "password", :password_confirmation=>"password", :role=>"admin"}).save
User.new({ :email => "moderator@serler.com", :password => "password", :password_confirmation=>"password", :role=>"moderator"}).save
User.new({ :email => "analyst@serler.com", :password => "password", :password_confirmation=>"password", :role=>"analyst"}).save
User.new({ :email => "regular@serler.com", :password => "password", :password_confirmation=>"password", :role=>"regular"}).save
puts "created 4 default users: admin/moderator/analyst/regular with password: 'password'"

SearchField.new({ :fieldID => "title", :fieldName => "Document Title", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "authors", :fieldName => "Authors", :fieldType=>"string"}).∂save
SearchField.new({ :fieldID => "abstract", :fieldName => "Abstract", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "DOI", :fieldName => "DOI - Digital Object Identifier", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "ISBN", :fieldName => "ISBN - International Standard Book Number", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "rating", :fieldName => "Average Rating", :fieldType=>"list",:optionalValues=>"1,2,3,4,5"}).save
SearchField.new({ :fieldID => "publicationDate", :fieldName => "Publication Date", :fieldType=>"date"}).save
SearchField.new({ :fieldID => "SEmethod", :fieldName => "SE methods or practies", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "ResearchMethod", :fieldName => "Research Method", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "ResearchOutcome", :fieldName => "Research Outcome", :fieldType=>"string"}).save


puts "create 10 sample search conditionals"
