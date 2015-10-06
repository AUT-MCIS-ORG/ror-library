class AnalystController < ApplicationController
  def listAllPendingArticles
    end

  def listAllArticlesInProgress
  end
  
  def listAllPendingArticlesJson
    #analyt check the article status "moderated" as pending, which is moderated by moderator
    @rows = Source.find_by_sql "select sources.*,users.email from sources,users where source_status='moderated' and sources.submitter_id = users.id" 
  end
  
  def listAllArticlesInProgressJson
    @rows = Source.find_by_sql "select sources.*,users.email from sources,users where source_status='analysing' and sources.analyst_id=users.id" #article being analyzed by analyst
  end
end
