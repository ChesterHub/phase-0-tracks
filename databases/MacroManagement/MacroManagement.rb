require 'sqlite3'
require 'faker'

database = sqlite3::Database.new("MacroDatabase.db")


body_table = <<-SQL
CREATE TABLE IF NOT EXISTS Body_Stats(
id INTEGER PRIMARY KEY,
BodyFatPercentage INT,
Weight INT,
Date_Entered datetime NOT NULL DEFAULT CURDATE()
  )
SQL

database.execute(body_table)

results = database.execute("SELECT * FROM Body_Stats")
p results


until enterdata == "n" do
puts "Would you like to enter a new date of body stats? Y/N"
enterdata = gets.chomp.lowercase
puts "What is your current bodyfat percentage? Do not enter the % key."
bodyfat = gets.chomp.lowercase
puts "What is your current weight?"
weight = gets.chomp.lowercase
database.execute("INSERT INTO Body_Stats (BodyFatPercentage, Weight) VALUES (?,?)", [BodyFatPercentage, Weight])
end







