require 'base64'

class ResultController < ApplicationController
  def index
    searchID = params[:searchID]
    if searchID.to_s.strip.length == 0
      #there is not searchID, get the form conditions
      resultS = ""

      #params[:selectConnectorX].each_with_index {|value, index| puts "[#{index}] == #{value}" }
      #params[:selectFields].each_with_index {|value, index| puts "[#{index}] == #{value}" }
      #params[:selectOperators].each_with_index {|value, index| puts "[#{index}] == #{value}" }
      
      json = params.to_json
      @searchString = Base64.encode64(json)
      
      #puts "json: " + json
      #puts "code: " + code64 
      #puts "decode: " + Base64.decode64(code64)

      #@searchString = resultS
    else
      #search for the search string saved in DB
      # puts "search for ID: #{searchID}, user: #{current_user.id}"      
      searchRow = SavedSearch.find_by user_id: current_user.id, id: searchID
      
      @searchString = Base64.encode64(searchRow.search_values)
    end

  end



  # obsolete, moved in /saved_search/list
  #def listMySavedSearches
  #end
  #
  #def saveSearch
  #end

  def getSourceDetail
    begin
      id = params[:source_id]
      @source = Source.find(id)   
      @rc = 0
    rescue ActiveRecord::RecordNotFound
      @rc = 1  
      @source = "none"
    end
     
  end
  
  def print
  end

  def shareByEmail
  end

  def saveResults
  end
  
  def getResults
    # read the search condition from the json request
    searchConditions = params[:searchConditions] 
    json = Base64.decode64(searchConditions)

    oldParms = ActiveSupport::JSON.decode(json)
    whereClause = ""
    
    oldParms["selectConnectorX"].length.times do |i|      
      if i > 0 
        whereClause += " "+oldParms["selectConnectorX"][i]
      end
      sqlFrag = " "+ getSQLFrag(oldParms["selectFields"][i], oldParms["selectOperators"][i], oldParms["selectFieldValues"][i])
      whereClause += sqlFrag
    end 
    
    
    sql = "select sources.*,evidences.se_method,evidences.se_methodology,evidences.benefit, evidences.result, evidences.participants , evidences.metric,  evidences.context from sources left join evidences on sources.id = evidences.source_id"
    sql =  sql + " where " + whereClause
    #puts "SQL Clause: " +sql
    @rows = Source.find_by_sql(sql) 
  end
  
  def getSQLFrag(field,op,value)
    unless field and op and value
      sql = ""
    end

    if field == 'avg_rating'
	    if (op == 'biggerThan')
	       sql =  field + " >= " + value 
	    elsif (op == 'smallerThan')
	      sql =  field + " <= " + value 
	    else
	      sql =  field + ' = ' + value	    	
	    end
    else
	    value = value.upcase
	    if(op == 'contains') 
	      sql = "UPPER(" + field + ') like ' +"'%#{value}%'"
	    elsif (op == 'biggerThan')
	       sql =  field + " >= '" + value + "' "
	    elsif (op == 'smallerThan')
	      sql =  field + " <= '" + value + "' "
	    elsif (op == 'equals')
	      sql =  field + ' =' + "'#{value}'"    
	    end
    end
		

    
    return sql; 
  end
  
end
