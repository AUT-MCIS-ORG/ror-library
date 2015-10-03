class SourceRatingController < ApplicationController
  def rate
    rating = params[:rating]
    comment = params[:comment]
    sourceID = params[:source_id]
    
    unless rating and sourceID
      @rc = -1
      return
    end 
    
    newRate = Rating.create( source_id: sourceID, user_id: current_user.id, rating: rating, comment: comment)
    if newRate 
      #select avg rating from all records in rating records
      rows = Rating.find_by_sql("select AVG(rating) as avg_rating from ratings where source_id ='#{sourceID}'")
      avg_rating = rows[0].avg_rating
      
      source = Source.find(sourceID)
      if source
        source.avg_rating = avg_rating
        source.save
        @rc = 0
      end
    else
      @rc = 1
    end
  end
end
