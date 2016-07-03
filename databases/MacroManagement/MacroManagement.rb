require 'sqlite3'

db = SQLite3::Database.new("bodystats.db")
#db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS bodystats (
    id INTEGER PRIMARY KEY,
    fatpercentage VARCHAR(255),
    weight VARCHAR(255),
    date_entered datetime NOT NULL DEFAULT CURRENT_DATE
  )
SQL

db.execute(create_table_cmd)

enterdata = ""
puts "Would you like to enter a new date of body stats? Y/N"
enterdata = gets.chomp.downcase
until enterdata == "n" do
	puts "What is your current bodyfat percentage? Do not enter the % key."
	bodyfat = gets.chomp.downcase
	puts "What is your current weight?"
	weight = gets.chomp.downcase
	db.execute("INSERT INTO bodystats (fatpercentage, weight) VALUES (?,?)", [bodyfat, weight])
	puts "Would you like to enter another date of body stats? Y/N"
	enterdata = gets.chomp.downcase
end

results = db.execute("SELECT * FROM bodystats")

results.each do |row|
puts "On #{row[3]} Chester weighed #{row[2]} pounds and had a bodyfat of #{row[1]}%."
end







