class ResultController < ApplicationController
  def index
    searchID = params[:searchID]
    if searchID.to_s.strip.length == 0
      #there is not searchID, get the form conditions
      resultS = ""

      #params[:selectConnectorX].each_with_index {|value, index| puts "[#{index}] == #{value}" }
      #params[:selectFields].each_with_index {|value, index| puts "[#{index}] == #{value}" }
      #params[:selectOperators].each_with_index {|value, index| puts "[#{index}] == #{value}" }
      
      params.each do |key, value|
        if key.to_s.start_with?("select")
          resultS << key + "=" + value + "####"
        end  
      end
      @searchString = resultS
    else
      #search for the search string saved in DB
      puts "search for ID: #{searchID}, user: #{current_user.id}"      
      searchRow = SavedSearch.find_by user_id: current_user.id, id: searchID
      
      @searchString = searchRow.search_values
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
    puts "Json request searchConditions: #{searchConditions}"
    sql = "select sources.*,evidences.se_method,evidences.se_methodology,evidences.benefit, evidences.result, evidences.participants , evidences.metric,  evidences.context from evidences, sources where sources.id = evidences.source_id"
    @rows = Source.find_by_sql(sql) 
  end
end
