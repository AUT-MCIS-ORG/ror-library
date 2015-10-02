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
SearchField.new({ :fieldID => "authors", :fieldName => "Authors", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "abstract", :fieldName => "Abstract", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "DOI", :fieldName => "DOI - Digital Object Identifier", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "ISBN", :fieldName => "ISBN - International Standard Book Number", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "rating", :fieldName => "Average Rating", :fieldType=>"list",:optionalValues=>"1,2,3,4,5"}).save
SearchField.new({ :fieldID => "publicationDate", :fieldName => "Publication Date", :fieldType=>"date"}).save
SearchField.new({ :fieldID => "Page", :fieldName => "Page", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "Journal", :fieldName => "Journal", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "SEmethod", :fieldName => "SE methods or practies", :fieldType=>"list",:optionalValues=>"TDD, BDD, pair programming, planning poker, daily standup meetings, story boards, user story mapping, continuous integration, retrospectives, burn down charts, requirements prioritisation, version control, code sharing"}).save
SearchField.new({ :fieldID => "SEmethodology", :fieldName => "SE methodology", :fieldType=>"list",:optionalValues=>"Scrum, Waterfall, Spiral, XP, Rational Unified Process, Crystal, Clean room, Feature Driven Development, Model Driven Development, Domain Driven Development, Formal methods, Problem Driven Development, Cloud computing, Service Oriented Development, Aspect Oriented Development, Valuse Driven Development , Product Driven Development, Agile"}).save
SearchField.new({ :fieldID => "ResearchMethod", :fieldName => "Research Method", :fieldType=>"list",:optionalValues=>"Case study, Field Observation, Experiment, Interview, Survey"}).save
SearchField.new({ :fieldID => "ResearchOutcome", :fieldName => "Research Outcome", :fieldType=>"string"}).save


puts "create 13 sample search conditionals"

saved_search_list = [
  [ 1, "search name1", "selectField1=field1####selectField1Opt=opt1####selectField1Value=value1####selectField2=field2####selectField2Opt=opt2####selectField2Value=value2####selectField3=field3####selectField3Opt=opt3####selectField3Value=value3####selectOpt1=like####selectValue1=####" ],
  [ 1, "search name2", "selectField1=field1####selectField1Opt=opt1####selectField1Value=value1####selectField2=field2####selectField2Opt=opt2####selectField2Value=value2####selectField3=field3####selectField3Opt=opt3####selectField3Value=value3####selectOpt1=like####selectValue1=####" ],
  [ 1, "search name3", "selectField1=field1####selectField1Opt=opt1####selectField1Value=value1####selectField2=field2####selectField2Opt=opt2####selectField2Value=value2####selectField3=field3####selectField3Opt=opt3####selectField3Value=value3####selectOpt1=like####selectValue1=####" ],
  [ 1, "search name4", "selectField1=field1####selectField1Opt=opt1####selectField1Value=value1####selectField2=field2####selectField2Opt=opt2####selectField2Value=value2####selectField3=field3####selectField3Opt=opt3####selectField3Value=value3####selectOpt1=like####selectValue1=####" ],
]

saved_search_list.each do |userID, searchName, searchValues|
  SavedSearch.create( user_id: userID, search_name: searchName, search_values: searchValues)
end

puts "create 4 sample search values"
