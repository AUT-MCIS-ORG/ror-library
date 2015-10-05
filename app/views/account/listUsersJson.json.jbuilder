json.draw 1
json.recordsTotal 57
json.recordsFiltered 57

json.data @data do |row|
   json.id row.id
   json.email row.email
   json.role row.role 
   json.sign_in_count row.sign_in_count
   json.created_at row.created_at.strftime('%F %R %Z')
   json.last_sign_in_at row.last_sign_in_at ? row.last_sign_in_at.strftime('%F %R  %Z') : ""
end
