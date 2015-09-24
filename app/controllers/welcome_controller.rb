class WelcomeController < ApplicationController
  skip_before_filter :authenticate_user!
  
  def index
  end
  def jquery
  end
  
  def listLatestArticles
    
  end
  
  def listHighestRatingArticles
    
  end
end
