json.array! @messages.each do |message|
  json.id message.id
  json.name message.user.name
  json.body message.body
end
