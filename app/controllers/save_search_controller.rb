class SaveSearchController < ApplicationController
  def save

    name = params[:search_name]
    value = params[:search_values]
    rc = SavedSearch.create( user_id: current_user.id, search_name: name, search_values: value)
    if rc != nil
      @ok = "success"
    else
      @ok = "failure"
    end 
  end
  
  def delete
    searchID = params[:searchID]
    puts "delete search id: #{searchID}"
    row = SavedSearch.find_by id: searchID
    if row != nil 
      rc = row.destroy()
      print "@rc == #{@rc}"  
      @ok = "success" 
    else
      puts "record NOT exist!"
      @ok = "non-exist"       
    end
  end

  def list
    @allSearches = SavedSearch.where("user_id = #{current_user.id}") #userID: current_user.id
  end
end
