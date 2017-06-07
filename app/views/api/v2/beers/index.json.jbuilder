json.array! @beer.each do |beer|
  json.name beer.name
  json.style beer.style
  json.alcohol beer.alcohol
  json.id beer.id
end