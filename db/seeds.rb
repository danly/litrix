# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jobs = Dataset.create(:title => "Steve Jobs")
jobs.title_params.create(:itemTitle => 'Birth', :note => "The man was born and adopted", :date => Date.parse('24-02-1955'), :age => 0)
jobs.title_params.create(:itemTitle => 'Met Woz', :note => "The Woz", :date => Date.parse('10-08-1969'), :age => 14)
jobs.title_params.create(:itemTitle => 'Atari', :note => "First job", :date => Date.parse('10-07-1974'), :age => 19)
jobs.title_params.create(:itemTitle => 'Apple I', :note => "Shows at Homebrew Computer Club with Woz", :date => Date.parse('25-03-1976'), :age => 21)
jobs.title_params.create(:itemTitle => 'Apple Computer Inc.', :note => "Founded with Woz and Wayne", :date => Date.parse('01-04-1976'), :age => 21)
jobs.title_params.create(:itemTitle => 'Resigned from Apple', :note => "Starts NeXT", :date => Date.parse('17-08-1985'), :age => 30)
jobs.title_params.create(:itemTitle => 'Pixar', :note => "Buy's Lucas' computer division for $10 million and incorpates it as Pixar", :date => Date.parse('30-01-1986'), :age => 31)
jobs.title_params.create(:itemTitle => 'Marriage', :note => "Marries Laurene Powell in Yosemite under the blessing of Steve's old zen guru Kobin Chino", :date => Date.parse('18-01-1991'), :age => 36)
jobs.title_params.create(:itemTitle => 'Informal Advisor', :note => "Apple buys NeXT for $400 million", :date => Date.parse('11-12-1996'), :age => 41)
jobs.title_params.create(:itemTitle => 'CEO of Apple', :note => "Interim CEO", :date => Date.parse('11-07-1997'), :age => 42)
jobs.title_params.create(:itemTitle => 'Official CEO', :note => "Drops the interim title", :date => Date.parse('05-01-2000'), :age => 45)
jobs.title_params.create(:itemTitle => 'Unveils iPod', :note => "First iPod", :date => Date.parse('23-10-2001'), :age => 46)
jobs.title_params.create(:itemTitle => "'Stay hungry, stay foolish'", :note => "Stanford commencement speech", :date => Date.parse('12-06-2005'), :age => 50)
jobs.title_params.create(:itemTitle => "Disney acquires Pixar", :note => "$7.4 billion. Jobs joins the Disney board", :date => Date.parse('24-01-2006'), :age => 51)
jobs.title_params.create(:itemTitle => "iPhone", :note => "Released in US", :date => Date.parse('29-06-2007'), :age => 52)
jobs.title_params.create(:itemTitle => "'Spaceship'", :note => "Unveil plans for the new campus" :date => Date.parse('06-06-2011'), :age => 56)
jobs.title_params.create(:itemTitle => "Resigns from Apple", :note => "Unveil plans for the new campus" :date => Date.parse('24-08-2011'), :age => 56)
jobs.title_params.create(:itemTitle => "Death", :note => "Dies at home, surrounded by family" :date => Date.parse('05-10-2011'), :age => 56)



comp = Dataset.create(:title => 'Composers')
comp.title_params.create(:itemTitle => 'Mozart', :note => "Composed his first symphony at age 8", :date => Date.parse('17-07-1764'), :age => 8)
comp.title_params.create(:itemTitle => 'Beethoveen', :note => "Composed Fur Elise supposedly around this age", :date => Date.parse('27-04-1810'), :age => 45)
comp.title_params.create(:itemTitle => 'Beethoveen', :note => "Composed Sonata No. 14 Moonlight", :date => Date.parse('27-10-1801'), :age => 30)
comp.title_params.create(:itemTitle => 'Camille Saint-Saens', :note => "Composed Introduction and Rondo Capriccioso", :date => Date.parse('02-03-1863'), :age => 28)
comp.title_params.create(:itemTitle => 'Beethoveen', :note => "Composed Violin Sonata No. 9 'Kreutzer'", :date => Date.parse('24-04-1803'), :age => 33)
comp.title_params.create(:itemTitle => 'Chopin', :note => "Composed Ballade No. 1 in G minor", :date => Date.parse('24-04-1831'), :age => 21)


life = Dataset.create(:title => 'Life')
life.title_params.create(:itemTitle => 'First Marriage', :note => "29 is America's average age to get married", :date => Date.parse('17-07-2015'), :age => 29)
life.title_params.create(:itemTitle => 'First Child', :note => "Average in the U.S. is 25", :date => Date.parse('17-02-2014'), :age => 25)
life.title_params.create(:itemTitle => 'First Child', :note => "Average in the U.S. is 25", :date => Date.parse('17-02-2014'), :age => 25)
life.title_params.create(:itemTitle => 'Graduate High School', :note => "Got that first diploma!", :date => Date.parse('15-06-2014'), :age => 18)
life.title_params.create(:itemTitle => 'Graduate College', :note => "Average age is 24", :date => Date.parse('15-06-2010'), :age => 24)
life.title_params.create(:itemTitle => 'Graduate College', :note => "Average age is 24", :date => Date.parse('15-06-2010'), :age => 24)
life.title_params.create(:itemTitle => 'Enter K-12', :note => "Around 5 years old here", :date => Date.parse('28-08-2000'), :age => 5)
life.title_params.create(:itemTitle => 'First-time Grandparent', :note => "Average 47 when you have a grandchild", :date => Date.parse('12-12-2012'), :age => 47)



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

