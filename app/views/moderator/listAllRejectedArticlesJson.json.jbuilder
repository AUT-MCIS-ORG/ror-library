json.data @rows do |row|
   json.id row.id
   json.title row.title
   json.authors row.authors 
   json.abstract row.abstract
   json.publisher row.publisher
   json.publish_date row.publish_date ? row.publish_date.strftime('%F %R  %Z') : ""
   json.doi row.doi
   json.pages row.page_start.to_s + "-" + row.page_end.to_s
   json.volume row.volume
   json.issue row.issue
   json.avg_rating row.avg_rating
   json.submitter row.email
   json.status row.source_status
end
