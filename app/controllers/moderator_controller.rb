class ModeratorController < ApplicationController
  def listAllPendingArticles
  end

  def listAllRejectedArticles
  end
  
  def listAllPendingArticlesJson
    @rows = Source.find_by_sql "select sources.*,users.email from sources,users where source_status='submitted' and sources.submitter_id = users.id" 
  end

  def listAllRejectedArticlesJson
    @rows = Source.find_by_sql "select sources.*,users.email from sources,users where source_status='rejected' and sources.submitter_id = users.id" 
  end
end
