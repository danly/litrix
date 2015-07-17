# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pres = Dataset.create(:title => 'Presidents')
pres.title_params.create(:itemTitle => 'George Washington', :note => "Became America's 1st President", :date => Date.parse('30-04-1789'), :age => 57)
pres.title_params.create(:itemTitle => 'John Adams', :note => "2nd President", :date => Date.parse('04-03-1797'), :age => 61)
pres.title_params.create(:itemTitle => 'Thomas Jefferson', :note => "3rd President", :date => Date.parse('04-03-1801'), :age => 57)
pres.title_params.create(:itemTitle => 'James Madison', :note => "4th President", :date => Date.parse('04-03-1809'), :age => 57)
pres.title_params.create(:itemTitle => 'James Monroe', :note => "5th President", :date => Date.parse('March 4, 1817'), :age => 58)
pres.title_params.create(:itemTitle => 'John Quincy Adams', :note => "6th President", :date => Date.parse('March 4, 1825'), :age => 57)
pres.title_params.create(:itemTitle => 'Andrew Jackson', :note => "7th President", :date => Date.parse('March 4, 1825'), :age => 61)
pres.title_params.create(:itemTitle => 'Martin Van Buren', :note => "8th President", :date => Date.parse('March 4, 1837'), :age => 54)
pres.title_params.create(:itemTitle => 'William Henry Harrison', :note => "9th President", :date => Date.parse('March 4, 1841'), :age => 68)
pres.title_params.create(:itemTitle => 'John Tyler', :note => "10th President", :date => Date.parse('April 4, 1841'), :age => 51)
pres.title_params.create(:itemTitle => 'James K. Polk', :note => "11th President", :date => Date.parse('March 4, 1845'), :age => 49)
pres.title_params.create(:itemTitle => 'Zachary Taylor', :note => "12th President", :date => Date.parse('March 4, 1849'), :age => 64)
pres.title_params.create(:itemTitle => 'Millard Fillmore', :note => "13th President", :date => Date.parse('July 9, 1850'), :age => 50)
pres.title_params.create(:itemTitle => 'Franklin Pierce', :note => "14th President", :date => Date.parse('March 4, 1853'), :age => 48)
pres.title_params.create(:itemTitle => 'James Buchanan', :note => "15th President", :date => Date.parse('March 4, 1857'), :age => 65)
pres.title_params.create(:itemTitle => 'Abraham Lincoln', :note => "16th President who is on the penny", :date => Date.parse('March 4, 1861'), :age => 52)
pres.title_params.create(:itemTitle => 'Andrew Johnson', :note => "17th President", :date => Date.parse('April 15, 1865'), :age => 56)
pres.title_params.create(:itemTitle => 'Ulysses S. Grant', :note => "18th President", :date => Date.parse('March 4, 1869'), :age => 46)
pres.title_params.create(:itemTitle => 'Rutherford B. Hayes', :note => "19th President", :date => Date.parse('March 4, 1877'), :age => 54)
pres.title_params.create(:itemTitle => 'James A. Garfield', :note => "20th President", :date => Date.parse('March 4, 1881'), :age => 49)
pres.title_params.create(:itemTitle => 'Chester A. Arthur', :note => "21th President", :date => Date.parse('September 19, 1881'), :age => 51)
pres.title_params.create(:itemTitle => 'Grover Cleveland', :note => "22th President", :date => Date.parse('March 4, 1885'), :age => 47)
pres.title_params.create(:itemTitle => 'Benjamin Harrison', :note => "23th President", :date => Date.parse('March 4, 1889'), :age => 55)
pres.title_params.create(:itemTitle => 'Grover Cleveland', :note => "24th President", :date => Date.parse('March 4, 1893'), :age => 55)
pres.title_params.create(:itemTitle => 'William McKinley', :note => "25th President", :date => Date.parse('March 4, 1897'), :age => 54)
pres.title_params.create(:itemTitle => 'Theodore Roosevelt', :note => "26th President", :date => Date.parse('September 14, 1901'), :age => 42)
pres.title_params.create(:itemTitle => 'William Howard Taft', :note => "27th President", :date => Date.parse('March 4, 1909'), :age => 51)
pres.title_params.create(:itemTitle => 'Woodrow Wilson', :note => "28th President", :date => Date.parse('March 4, 1913'), :age => 56)
pres.title_params.create(:itemTitle => 'Warren G. Harding', :note => "29th President", :date => Date.parse('March 4, 1921'), :age => 55)
pres.title_params.create(:itemTitle => 'Calvin Coolidge', :note => "30th President", :date => Date.parse('August 2, 1923'), :age => 51)
pres.title_params.create(:itemTitle => 'Herbert Hoover', :note => "31th President", :date => Date.parse('March 4, 1929'), :age => 54)
pres.title_params.create(:itemTitle => 'Franklin D. Roosevelt', :note => "32th President", :date => Date.parse('March 4, 1933'), :age => 51)
pres.title_params.create(:itemTitle => 'Harry S. Truman', :note => "33th President", :date => Date.parse('April 12, 1945'), :age => 60)
pres.title_params.create(:itemTitle => 'Dwight D. Eisenhower', :note => "34th President", :date => Date.parse('January 20, 1953'), :age => 62)
pres.title_params.create(:itemTitle => 'John F. Kennedy', :note => "35th President", :date => Date.parse('January 20, 1961'), :age =>43)
pres.title_params.create(:itemTitle => 'Lyndon B. Johnson', :note => "36th President", :date => Date.parse('November 22, 1963'), :age =>55)
pres.title_params.create(:itemTitle => 'Richard Nixon', :note => "37th President", :date => Date.parse('January 20, 1969'), :age =>56)
pres.title_params.create(:itemTitle => 'Gerald Ford', :note => "38th President", :date => Date.parse('August 9, 1974'), :age =>61)
pres.title_params.create(:itemTitle => 'Jimmy Carter', :note => "39th President", :date => Date.parse('January 20, 1977'), :age =>52)
pres.title_params.create(:itemTitle => 'Ronald Reagan', :note => "40th President", :date => Date.parse('January 20, 1981'), :age =>69)
pres.title_params.create(:itemTitle => 'George H. W. Bush', :note => "41th President", :date => Date.parse('January 20, 1989'), :age =>64)
pres.title_params.create(:itemTitle => 'Bill Clinton', :note => "42th President, candidate for 'First Gentleman'", :date => Date.parse('January 20, 1993'), :age =>46)
pres.title_params.create(:itemTitle => 'George W. Bush', :note => "43th President", :date => Date.parse('January 20, 2001'), :age =>54)
pres.title_params.create(:itemTitle => 'Barack Obama', :note => "44th President, first black president", :date => Date.parse('January 20, 2009'), :age =>47)





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

