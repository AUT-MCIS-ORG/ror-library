class ResultController < ApplicationController
  def index
    searchID = params[:searchID]
    if searchID.to_s.strip.length == 0
      #there is not searchID, get the form conditions
      resultS = ""
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

  def listMySavedSearches
  end

  def print
  end

  def shareByEmail
  end

  def saveSearch
  end

  def saveResults
  end
  
  def getResults
    
  end
end
