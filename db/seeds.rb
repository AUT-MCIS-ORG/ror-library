# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
############################################
User.delete_all

User.new({ :email => "admin@serler.com", :password => "password", :password_confirmation=>"password", :role=>"admin"}).save
User.new({ :email => "moderator@serler.com", :password => "password", :password_confirmation=>"password", :role=>"moderator"}).save
User.new({ :email => "analyst@serler.com", :password => "password", :password_confirmation=>"password", :role=>"analyst"}).save
User.new({ :email => "regular@serler.com", :password => "password", :password_confirmation=>"password", :role=>"regular"}).save
puts "created 4 default users: admin/moderator/analyst/regular with password: 'password'"

50.times do |i|
	User.new({ :email => "admin#{i}@serler.com", :password => "password", :password_confirmation=>"password", :role=>"admin"}).save
	User.new({ :email => "moderator#{i}@serler.com", :password => "password", :password_confirmation=>"password", :role=>"moderator"}).save
	User.new({ :email => "analyst#{i}@serler.com", :password => "password", :password_confirmation=>"password", :role=>"analyst"}).save
	User.new({ :email => "regular#{i}@serler.com", :password => "password", :password_confirmation=>"password", :role=>"regular"}).save
end

############################################
SearchField.delete_all

SearchField.new({ :fieldID => "title", :fieldName => "Document Title", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "authors", :fieldName => "Authors", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "abstract", :fieldName => "Abstract", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "doi", :fieldName => "DOI - Digital Object Identifier", :fieldType=>"string"}).save
#SearchField.new({ :fieldID => "ISBN", :fieldName => "ISBN - International Standard Book Number", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "avg_rating", :fieldName => "Average Rating", :fieldType=>"list",:optionalValues=>"1,2,3,4,5"}).save
SearchField.new({ :fieldID => "publish_date", :fieldName => "Publication Date", :fieldType=>"date"}).save
SearchField.new({ :fieldID => "pages", :fieldName => "Pages", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "Journal", :fieldName => "Journal", :fieldType=>"string"}).save
SearchField.new({ :fieldID => "se_method", :fieldName => "SE methods or practies", :fieldType=>"list",:optionalValues=>"TDD, BDD, pair programming, planning poker, daily standup meetings, story boards, user story mapping, continuous integration, retrospectives, burn down charts, requirements prioritisation, version control, code sharing"}).save
SearchField.new({ :fieldID => "se_methodology", :fieldName => "SE methodology", :fieldType=>"list",:optionalValues=>"Scrum, Waterfall, Spiral, XP, Rational Unified Process, Crystal, Clean room, Feature Driven Development, Model Driven Development, Domain Driven Development, Formal methods, Problem Driven Development, Cloud computing, Service Oriented Development, Aspect Oriented Development, Valuse Driven Development , Product Driven Development, Agile"}).save
SearchField.new({ :fieldID => "research_methods", :fieldName => "Research Method", :fieldType=>"list",:optionalValues=>"Case study, Field Observation, Experiment, Interview, Survey"}).save
SearchField.new({ :fieldID => "benefit", :fieldName => "Research Outcome", :fieldType=>"string"}).save


puts "create 13 sample search conditionals"

############################################
SavedSearch.delete_all

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

############################################
Source.delete_all

source_list = [
   [ "title1", "Mao Chuan Li, Allen Wang", "Abstract1...","publisher1","1999-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151001",
     0,0,5,4,5,"analysed","What is software","questionnaire",4,2,3 ],
   [ "title2", "Allen Wang", "Abstract2...","publisher2","2000-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151002",
     0,0,5,4,5,"analysed","What is software","questionnaire",4,2,3 ],
   [ "title3", "Mao Chuan Li, Allen Wang", "Abstract3...","publisher2","2000-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151003",
     0,0,5,4,5,"moderated","What is software","questionnaire",4,2,3 ],
   [ "title4", "Mao Chuan Li, Eva He", "Abstract4...","publisher1","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151004",
     0,0,5,4,5,"rejected","What is software","questionnaire",4,2,3 ]               
 ]

source_list.each do |title, authors, abstract, publisher, publish_date, keywords, doi, page_start, page_end, volume, issue, avg_rating, source_status, research_questions, research_methods, submitter_id, moderator_id, analyst_id |
  Source.create(title: title, authors: authors, abstract: abstract, publisher: publisher, publish_date: publish_date, keywords: keywords, doi: doi, page_start: page_start, page_end: page_end, volume: volume, issue: issue, avg_rating: avg_rating, source_status: source_status, research_questions: research_questions, research_methods: research_methods, submitter_id: submitter_id, moderator_id: moderator_id, analyst_id:analyst_id )
end

puts "create 4 sample source articles..."



evidence_list = [
   [1,"TDD","Scrum","improve process quality","shows no difference in the metric for the two groups","student","McCabe’s cyclomatic complexity metric","doing TDD on a specific project assignment"  ],
   [1,"TDD","Scrum","improve process quality","shows no difference in the metric for the two groups","student","McCabe’s cyclomatic complexity metric","doing TDD on a specific project assignment"  ],
   [1,"TDD","Scrum","improve process quality","shows no difference in the metric for the two groups","student","McCabe’s cyclomatic complexity metric","doing TDD on a specific project assignment"  ],
   [2,"TDD","Waterfall","improve code quality","shows no difference in the metric for the two groups","student","McCabe’s cyclomatic complexity metric","doing TDD on a specific project assignment"  ],
   [2,"TDD","Waterfall","improve code quality","shows no difference in the metric for the two groups","student","McCabe’s cyclomatic complexity metric","doing TDD on a specific project assignment"  ],
   [2,"TDD","Waterfall","improve code quality","shows no difference in the metric for the two groups","student","McCabe’s cyclomatic complexity metric","doing TDD on a specific project assignment"  ],
   [2,"TDD","Waterfall","improve code quality","shows no difference in the metric for the two groups","student","McCabe’s cyclomatic complexity metric","doing TDD on a specific project assignment"  ]
 ]
 
 evidence_list.each do |source_id, se_method, se_methodology, benefit, result, participants, metric, context    |
  Evidence.create(source_id: source_id, se_method: se_method, se_methodology: se_methodology, benefit: benefit, result: result, participants: participants, metric: metric, context: context )
end

puts "create 7 sample source articles..."
 


