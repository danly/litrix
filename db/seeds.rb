# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


file = File.read('config/lifedata.json')
data_hash = JSON.parse(file)

fact = data_hash["fact"]

fact.length.times do |index|
  params = fact[index]["dim"]

  x = {
    :country => params['COUNTRY'],
    :gho => params['GHO'],
    :gender => params['SEX'],
    :age => fact[index]['Value'],
    :census_year => params['YEAR']
  }

  data = Lifedatum.new
  data.country = x[:country]
  data.gho = x[:gho]
  data.gender = x[:gender]
  data.age = x[:age]
  data.census_year = x[:census_year]
  data.save

end

Lifedatum.where(:gho => "Healthy life expectancy (HALE) at birth (years)").destroy_all
Lifedatum.where(:gho => "Life expectancy at age 60 (years)").destroy_all
Lifedatum.where(:census_year => 1990).destroy_all
Lifedatum.where(:census_year => 2000).destroy_all
Lifedatum.where(:census_year => 2012).destroy_all

