# require 'rubygems'
# require 'data_bank'
# 
# class MyObject
#   attr_accessor :data
# 
#   def initialize(data)
#     @data = data
#   end
# end
# 
# db = DataBank.new ".", "data_bank.data"
# 
# my_object = db.withdraw || MyObject.new(1)
# my_object.data += 1
# puts my_object.data
# db.deposit my_object

require 'rubygems'
require 'data_bank'

class MyObject
  attr_accessor :data

  def initialize(data)
    @data = data
  end
end

db = DataBank.new ".", "data_bank.data"

my_object = db.withdraw || MyObject.new(1)
my_object.data += 1
puts my_object.data
db.deposit my_object
