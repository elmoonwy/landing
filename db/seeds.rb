# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

reports = [
  {transaction_result: "Attestation", transaction_count: 50},
  {transaction_result: "CHIP", transaction_count: 50},
  {transaction_result: "Comingled BIN", transaction_count: 50},
  {transaction_result: "IndianAffairs", transaction_count: 50},
  {transaction_result: "Medicaid", transaction_count: 50},
  {transaction_result: "Medicare", transaction_count: 50},
  {transaction_result: "No Federal Insurance", transaction_count: 50},
  {transaction_result: "Veteran", transaction_count: 50}
]

reports.each {|report|
    StateReporting.create(report)
}
