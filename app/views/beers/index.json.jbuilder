json.array! @beer.each do |beer|
  json.name beer.name
  json.style beer.style
  json.yeast beer.yeast
  json.malts beer.malts
  json.alcohol beer.alcohol
end