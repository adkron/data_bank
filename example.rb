require 'data_bank'

class MyObject
  attr_accessor :data

  def initialize(data)
    @data = data
  end
end

my_object = DataBank.withdraw || MyObject.new(1)
my_object.data += 1
puts my_object.data
DataBank.deposit my_object
