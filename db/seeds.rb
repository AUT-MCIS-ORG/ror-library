# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
############################################
Source.delete_all
SearchField.delete_all
SavedSearch.delete_all
Evidence.delete_all
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





 
puts "all data sources collected by Wu Zhen"
source_list = [
  [ "User-centered agile methods", "Hugh Beyer", "With the introduction and popularization of Agile methods of software development, existing relationships and working agreements between user experience groups and developers are being disrupted. Agile methods introduce new concepts: the Product Owner, the Customer (but not the user), short iterations, User Stories.","[San Rafael, Calif.] : Morgan & Claypool Publishers, c2010.","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151100",
     0,0,5,4,5,
     "analysing","What is User-centered agile method","survey",4,2,3 ],
     
 [ "Essential skills for the agile developer : a guide to better programming and design", "Alan Shalloway", "Essential skills for the agile developer : a guide to better programming and design","Upper Saddle River, NJ : Addison-Wesley, [2012]","2012-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151099",
     0,0,5,4,5,
     "analysing","What is Essential skills for the agile developer","survey",4,2,3 ],
     
  [ "Agile software architecture : aligning agile processes and software architectures", "Muhammad Ali Babar, Alan W. Brown, Ivan Mistrik", "Presents a consolidated view of the state-of-art and state-of-practice as well as the newest research findings","Amsterdam : Morgan Kaufmann, 2013.","2013-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151098",
     0,0,5,4,5,
     "analysing","Agile software architecture","survey",4,2,3 ],
     
  [ "Agile pocket guide a quick start to making your business agile using Scrum and beyond", "Peter Saddington", "The Agile Pocket Guide explains how to develop products, services, and software quickly and efficiently, without losing the main components of the framework so effective in streamlining the creating of these products and for making positive change within a company.","Hoboken, N.J. : John Wiley & Sons, c2013.","2013-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151097",
     0,0,5,4,5,
     "analysing","What is Scrum","survey",4,2,3 ],
     
  [ "Agile user experience design a practitioner's guide to making it work ", "Diana DeMarco Brown", "Being able to fit design into the Agile software development processes is an important skill in today's market. There are many ways for a UX team to succeed (and fail) at being Agile.","Waltham, Mass. : Elsevier, 2013.","2013-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151096",
     0,0,5,4,5,
     "analysing","What is software","survey",4,2,3 ],
     
  [ "The project manager's guide to mastering agile : principles and practices for an adaptive approach", "Charles G. Cobb", "The project manager's guide to mastering agile : principles and practices for an adaptive approach","Hoboken : John Wiley & Sons, 2015.","2015-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151095",
     0,0,5,4,5,
     "analysing","How to master agile","survey",4,2,3 ],
     
  [ "Agile project management : creating innovative products", "Jim Highsmith", "v.","Upper Saddle River, NJ : Addison-Wesley, [2010]","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151095",
     0,4,5,4,5,
     "analysing","What is software","survey",4,2,3 ], 



  [ "Agile software engineering", "Orit Hazzan and Yael Dubinsky", "Agile software engineering","London : Springer, c2008.","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151094",
     0,0,5,4,5,
     "analysed","What is Agile software engineering","survey",4,2,3 ],
     
  [ "Agile virtual enterprises : implementation and management support", "Maria Manuela Cunha, Goran D. Putnik", "Agile/virtual enterprise (A/VE) is seen as a new and most advanced organizational paradigm, and is expected to serve as a vehicle towards a seamless perfect alignment of the enterprise within the market.","Hershey, PA : Idea Group Pub., c2006.","2060-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151093",
     0,1,5,4,5,
     "analysed","What is Agile virtual enterprises","survey",4,2,3 ],
     
  [ "Agile service development combining adaptive methods and flexible solutions", "Marc Lankhorst", "Agile service development combining adaptive methods and flexible solutions", "Heidelberg ; New York : Springer Verlag, c2012","2012-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151092",
     1,0,5,4,5,
     "analysed","What is Agile service development","survey",4,2,3 ],

[ "Creativity and the agile mind : a multi-disciplinary study of a multi-faceted phenomenon", "Tony Veale, Kurt Feyaerts and Charles J. Forceville", "Creativity and the agile mind : a multi-disciplinary study of a multi-faceted phenomenon","Berlin : De Gruyter Mouton, [2013]","2013-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151091",
     1,2,5,4,5,
     "analysed","What is software","questionnaire",4,2,3 ],
     
  [ "Systems engineering agile design methodologies", "James A. Crowder, Shelli Friess", "This book examines the paradigm of the engineering design process. The authors discuss agile systems and engineering design. The book captures the entire design process (functionbases), context, and requirements to affect real reuse.","New York, NY : Springer, [2013]","2013-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151090",
     0,0,5,4,5,
     "analysed","What is software","questionnaire",4,2,3 ],
     
  [ "Agile change management : a practical framework for successful change planning and implementation", "Melanie Franklin", "The concept of agile working has been adopted by many organizations that recognize the need to respond quickly and easily to new opportunities and be fit for purpose in a world of complex and continuous change. ","London : Kogan Page, 2014.","2014-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151089",
     0,2,5,4,5,
     "analysed","What is Agile change management","questionnaire",4,2,3 ],
     
  [ "Agile Oracle application express", "Patrick Cimolini, Karen Cannell", "Agile Oracle application express","New York : Apress, c2012.","2012-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151088",
     1,0,5,4,5,
     "analysed","What is Agile Oracle application","questionnaire",4,2,3 ],
     
  [ "Pro Agile .NET development with Scrum", "Jerrel Blankenship, Matthew Bussa, Scott Millett.", "Pro Agile .NET development with Scrum... applies agile practices to a complete ASP.NET MVC project, including estimation, requirements gathering, and project management","New York : Apress, 2011.","2011-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151087",
     1,0,5,4,5,
     "analysed","What is Pro Agile .NET development with Scrum","questionnaire",4,2,3 ],


  [ "Extreme programming and agile processes in software engineering", "Hubert Baumeister, Michele Marchesi, Mike Holcombe", "Extreme programming and agile processes in software engineering","Berlin ; New York : Springer, [2005]","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151086",
     0,1,5,4,5,
     "analysed","What is Extreme programming and agile processes","questionnaire",4,2,3 ],
     
  [ "Management 3.0 : leading Agile developers, developing Agile leaders", "Jurgen Appelo", "Management 3.0 : leading Agile developers, developing Agile leaders","Upper Saddle River, NJ : Addison-Wesley, [2011]","2011-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151085",
     0,3,5,4,5,
     "analysed","What is agile management","questionnaire",4,2,3 ],
     
  [ "Agile analytics : a value-driven approach to business intelligence and data warehousing", "Ken Collier", "Agile analytics : a value-driven approach to business intelligence and data warehousing","Upper Saddle River, N.J. : Addison-Wesley, [2012]","2012-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151084",
     2,0,5,4,5,
     "analysed","What is Agile analytics","questionnaire",4,2,3 ],   
     
     
  [ "Agile strategy management : techniques for continuous alignment and improvement", "Soren Lyngso", "Your strategic initiatives are constantly under fire due to the evolving nature of markets, technology, laws, and government. To ensure your strategy succeeds, it must remain flexible while confronting these shifting challenges.","Boca Raton, FL : CRC Press, [2014]","2014-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151083",
     0,1,5,4,5,
     "analysed","What is Agile strategy management","questionnaire",4,2,3 ],
     
  [ "Effective project management : traditional, agile, extreme", "Robert K. Wysocki", "Effective project management : traditional, agile, extreme","Indianapolis, Ind. : Wiley ; Chichester : John Wiley, [2012]","2012-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151082",
     0,0,5,4,5,
     "analysed","What is Effective project management","questionnaire",4,2,3 ],
     
  [ "Agile principles unleashed proven approaches for achieving real productivity gains in any organisation", "Jamie Lynn Cooke", "Agile Principles Unleashed: Proven approaches for achieving real productivity gains in any organisation introduces every industry sector to the Agile approaches that have dramatically improved the IT, product development and manufacturing sectors over the past two decades. ","Ely, U.K. : IT Governance Pub., 2010.","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151081",
     0,1,5,4,5,
     "analysed","What is Agile principles","questionnaire",4,2,3 ],
     
  
   [ "Agile innovation : a revolutionary approach to accelerate success, inspire engagement, and ignite creativity", "Langdon Morris, Moses Ma, Po Chi Wu", "Effective innovation doesn't happen by accident - it happens by design! Agile Innovation is the field guide to designing and implementing effective innovation methods and projects, and facilitating collaborative processes that enable people to solve complex problems and create breakthrough solutions.","Hoboken, New Jersey : Wiley, [2014]","2014-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151080",
     0,0,5,4,5,
     "analysed","What is software","questionnaire",4,2,3 ],
     
  [ "Agile principles, patterns, and practices in C", "Robert C. Martin, Micah Martin", "Agile principles, patterns, and practices in C","Upper Saddle River, NJ : Prentice Hall, [2007]","2007-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151079",
     0,1,5,4,5,
     "analysed","What is Agile principles","questionnaire",4,2,3 ],
     
  [ "The business value of agile software methods : maximizing ROI with just-in-time processes and documentation", "David F. Rico, Hasan H. Sayani, Saya Sone ; foreword by Jeffrey V. Sutherland", "The business value of agile software methods","Fort Lauderdale, Fla. : J. Ross Pub., [2009]","2009-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151078",
     0,0,5,4,5,
     "analysed","What is The business value of agile software","questionnaire",4,2,3 ],
     
  [ "Lean but agile rethink workforce planning and gain a true competitive edge", "William J. Rothwell, James Graber, Neil McCormick", "As organizations strive to maximize efficiency to meet stringent budgets, a general \"do more with less\" mandate is no longer sufficient. ","New York : American Management Association, 2012.","2012-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151077",
     1,0,5,4,6,
     "analysed","What is agile planning","questionnaire",4,2,3 ],
     
  [ "Agile business rule development process, architecture, and JRules examples", "Jérm̌e Boyer, Hafedh Mili", "Agile business rule development process, architecture, and JRules examples","Berlin ; Heidelberg : Springer-Verlag, 2011.","2011-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151076",
     1,2,5,4,5,
     "analysed","What is Agile business rule development process","questionnaire",3,2,3 ],
     
  [ "Lean architecture for agile software development", "James Coplien, Gertrud Bjørnvig", "Lean architecture for agile software development","Chichester, West Sussex ; Hoboken, N.J. : Wiley, 2010.","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151075",
     3,3,5,4,5,
     "analysed","What is Lean architecture for agile","questionnaire",3,2,3 ],
     
  [ "Agile development with ICONIX process : people, process, and pragmatism", "Doug Rosenberg, Matt Stephens, and Mark Collins-Cope", "This book describes how to apply ICONIX Process (a minimal, use case-driven modeling process) in an agile software project. Its full of practical advice for avoiding common agile pitfalls. ","Berkeley, Calif. : Apress, 2005.","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151074",
     1,0,5,4,5,
     "analysed","What is Agile development with ICONIX process","questionnaire",1,2,3 ],
     
  [ "Agile software development : evaluating the methods for your organization", "Alan S. Koch", "Abstract4...","Boston, MA : Artech House, [2005]","2005-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151073",
     1,0,5,4,5,
     "analysed","What is agile software development","questionnaire",2,2,3 ], 
  
  [ "Adapting configuration management for Agile teams balancing sustainability and speed", "Mario E. Moreira", "Adapting Configuration Management for Agile Teams provides very tangible approaches on how Configuration Management with its practices and infrastructure can be adapted and managed in order to directly benefit agile teams. ","West Sussex : Wiley, 2010.","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151072",
     1,1,5,4,5,
     "analysed","What is Adapting configuration management for Agile","questionnaire",1,2,3 ], 
       
  [ "Managing Agile : strategy, implementation, organisation and people", "Alan Moran", "Abstract4...","Cham : Springer, 2015.","2015-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151071",
     2,0,5,4,5,
     "analysing","What is Agile strategy","questionnaire",4,1,3 ],  
               
  [ "Agile risk management", "Alan Moran", "Agile risk management","New York : Springer, [2014]","2014-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151070",
     1,0,5,4,5,
     "analysing","What is Agile risk management","questionnaire",3,2,3 ],   
     
  [ "Agile and iterative development : a manager's guid", "Craig Larman", "Agile and iterative development : a manager's guid","Boston : Addison-Wesley, [2004]","2004-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151069",
     2,2,5,4,5,
     "analysing","What is agile","questionnaire",1,2,3 ],   
           
  [ "Disciplined agile delivery : a practitioner's guide to agile software delivery in the enterprise ", "Scott Ambler, Mark Lines", "Disciplined agile delivery : a practitioner's guide to agile software delivery in the enterprise","Upper Saddle River, NJ : IBM Press, [2012]","2012-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151068",
     1,1,5,4,5,
     "analysing","What is Disciplined agile","questionnaire",2,2,3 ],
     
  [ "The agile architecture revolution : how cloud computing, REST-based SOA, and mobile computing are changing enterprise IT", "Jason Bloomberg", "The agile architecture revolution : how cloud computing, REST-based SOA, and mobile computing are changing enterprise IT","Hoboken : Wiley, 2013.","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151067",
     0,0,3,4,5,
     "moderated","What is agile architecture","questionnaire",1,2,3 ],   
        
  [ "Agile development & business goals", "Bill Holtsnider", "Professionals involved with business process and workflow modeling; IT leaders, including CIOs, CTOs, and COOs; enterprise architects and information systems architects; business modelers and business process professionals in IT and business management consulting; lead computer software engineers working on systems software.","Burlington, MA : Morgan Kaufmann Publishers/Elsevier, c2010.","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151066",
     1,2,5,4,5,
     "moderated","What is agile","questionnaire",1,2,3 ],   
     
  [ "Agile project management : managing for success", "James A. Crowder, Shelli Friess", "Agile project management : managing for success","Cham : Springer, [2014]","2014-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151065",
     1,0,5,4,5,
     "moderated","What is agile","questionnaire",4,2,3 ],       
          
    [ "The agile enterprise : reinventing your organization for success in an on-demand world", "Nirmal Pal, Daniel C. Pantaleo", "Introduction : the agile enterprise : reinventing your organization for success in an on demand world / Nirmal Pal and Daniel C. Pantaleo ","New York : Springer, [2005]","2015-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151064",
     1,1,5,4,5,
     "moderated","What is agile","questionnaire",1,2,3 ],  
                      
  [ "Think agile : how smart entrepreneurs adapt in order to succeed", "Taffy Williams", "When entrepreneurs lock themselves into one strategy, one product, one distribution method-and one way of thinking about their business-they limit their potential, and lower their chances of capitalizing on economic, industry, or market changes. Instead, those determined to keep up with today's constantly changing business environment need to master a new mindset: agility.","New York : American Management Association, [2014]","2014-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151063",
     1,1,5,4,5,
     "moderated","What is agile","interview",1,3,3 ],
     
  [ "The agile approach to adaptive research optimizing efficiency in clinical development", "Michael J. Rosenberg", "The pharmaceutical industry today faces a deepening crisis: inefficiency in its core business, the development of new drugs. The Agile Approach to Adaptive Research offers a solution. It outlines how adaptive research, using already-available tools and techniques, can enable the industry to streamline clinical trials and reach decision points faster and more efficiently.","Hoboken, N.J. : Wiley, c2010.","2010-01-01","saas,software engineering,agile","10.4018/IJSSOE.201510062",
     3,3,5,4,5,
     "moderated","What is agile approach","questionnaire",1,2,3 ],  
                      
  [ "Agile! : the good, the hype and the ugly", "Bertrand Meyer", "Agile! : the good, the hype and the ugly","Switzerland : Springer, [2014]","2014-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151063",
     2,3,5,4,5,
     "rejected","What is agile","questionnaire",2,2,3 ],
     
  [ "Agile : an executive guide : real results from IT budgets", "Jamie Lynn Cooke", "Agile : an executive guide : real results from IT budgets","Ely, Cambridgeshire : IT Governance Pub., 2011","2011-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151062",
     1,1,5,4,5,
     "rejected","What is agile","questionnaire",1,2,3 ], 
      
  [ "Agile marketing Michelle Accardi-Petersen.", "Michelle Accardi-Petersen", "Agile marketing Michelle Accardi-Petersen","Apress ; New York : distributed by Springer Science + Business Media, 2011","2011-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151061",
     0,0,5,4,5,
     "rejected","What is software","questionnaire",4,2,3 ], 
       
  [ "Extreme programming and agile processes in software engineering", "Pekka Abrahamsson, Michele Marchesi, Giancarlo Succi ", "Extreme programming and agile processes in software engineering","Berlin ; New York, NY : Springer, [2006]","2006-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151060",
     4,4,5,4,5,
     "rejected","What is software","questionnaire",4,2,3 ], 
       
  [ "Agile software development with HP Agile Manager", "Liran Tal", "Learn agile manager to improve your software development process","Apress, 2015.","2015-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151059",
     2,2,5,4,5,
     "rejected","what is agile software development","questionnaire",1,2,3 ],
     
     
   [ "Agile productivity unleashed proven approaches for achieving real productivity gains in any organization", "Jamie Lynn Cooke", "Jamie Lynn Cooke","Cambridgeshire, U.K. : It Governance Pub., 2010.","2010-03-01","saas,software engineering,agile","10.4018/IJSSOE.20151058",
     0,0,4,4,4,
     "submitted","how to achieve real productivity","questionnaire",3,2,3 ],
     
  [ "Agile contracts creating successful IT projects with Scrum", "Andreas Opelt, Boris Gloger, Wolfgang Pfarl, Ralf Mittermayr", "Approximately 50 percent of software developers use Scrum, an iterative and incremental development method for managing software projects and product or application development, in their work. The benefit of Scrum and other Agile methods is that they can address shifts in a large project that traditional managerial methods cannot.","Hoboken, New Jersey : John Wiley & Sons Inc., [2013]","2013-01-01","saas,software engineering,agile","10.4018/IJSSOE.20151057",
     5,5,5,4,5,
     "submitted","What is scrum","questionnaire",5,2,3 ],
     
  [ "Agile anywhere : essays on agile projects and beyond", "Hazzan, Orit", "The message conveyed in this work is that agility can be implemented anywhere. Accordingly, ten guidelines are presented for the adoption of agility to enable us to cope with changes in our lives, in our teams, and in our organizations. Since the authors advocate agility, the content is presented in the form of concise standalone chapters, allowing the reader to focus on the specific topic they wish to adopt in order to become agile.","Cham : Springer, 2014.","2008-05-01","saas,software engineering,agile","10.4018/IJSSOE.20151056",
     4,4,5,4,5,
     "submitted","What is beyond the agile","interview",1,2,3 ],
     
  [ "Agile management : leadership in an agile environment", "Medinilla, Ángel", "If you have tried to implement Agile in your organization, you have probably learned a lot about development practices, teamwork, processes and tools, but too little about how to manage such an organization. Yet managerial support is often the biggest impediment to successfully adopting Agile, and limiting your Agile efforts to those of the development teams while doing the same old-style management will dramatically limit the ability of your organization to reach the next Agile level. ","Heidelberg ; New York : Springer","2012-01-13","saas,software engineering,agile","10.4018/IJSSOE.20151055",
     3,3,5,4,5,
    "submitted","what is the leadership in an agile environment","survey",5,1,3 ], 
                
  [ "Being agile : your roadmap to successful adoption of agile", "Moreira, Mario E", "Being Agile is your roadmap to successfully transforming your organization to an Agile culture. Veteran agile coach Mario Moreira teaches new adopters how to implement a robust Agile framework to derive from it the maximum business benefit in terms of customer value, revenue, and employee engagement. Agile is a ubiquitous watchword in the corporate world, but only a minority of companies understand and practice what they pay lip service to.","Springer","2015-03-01","saas, software engineering, agile","10.4018/IJSSOE.20151006",0,1,5,4,5,
    "submitted","How to change to Agile culture","survey",5,1,2 ]                    
         
     
 ]
source_list.each do |title, authors, abstract, publisher, publish_date, keywords, doi, page_start, page_end, volume, issue, avg_rating, source_status, research_questions, research_methods, submitter_id, moderator_id, analyst_id |
  Source.create(title: title, authors: authors, abstract: abstract, publisher: publisher, publish_date: publish_date, keywords: keywords, doi: doi, page_start: page_start, page_end: page_end, volume: volume, issue: issue, avg_rating: avg_rating, source_status: source_status, research_questions: research_questions, research_methods: research_methods, submitter_id: submitter_id, moderator_id: moderator_id, analyst_id:analyst_id )
end

puts "DONE load data from Wu Zhen"
######################################
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

puts "DONE create 7 sample source articles..."
