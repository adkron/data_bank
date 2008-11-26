# This gem eases data marshaling from one run of a script
# to the next.
#
# Author::    Amos King  (mailto:amos.l.king@gmail.com)
# Copyright:: Copyright (c) 2008 Amos King
# License::   Released under the MIT license

require 'base64'

class DataBank
  
  # Takes the path and the filename of the data store.
  def initialize(path, filename)
    @path = path
    @filename = filename
  end
  
  # Stores a base64 encoded representation of a class at
  # the end of the file specified in initialize.  On
  # subsequent calls it will replace the data with the
  # new data passed in.
  def deposit(data)
    File.open("#{@path}/#{@filename}", 'w+') do |file|
      file.write Base64.encode64(Marshal.dump(data))
    end
  end
  
  # Loads the data stored at the end of the file form
  # which it is called.  If data is present.
  def withdraw
    if File.exists?("#{@path}/#{@filename}")
      data = File.read "#{@path}/#{@filename}"
      Marshal.load(Base64.decode64(data)) rescue NameError
    end
  end
end