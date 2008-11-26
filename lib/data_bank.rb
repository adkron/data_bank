# This gem eases data marshaling from one run of a script
# to the next.
#
# Author::    Amos King  (mailto:amos.l.king@gmail.com)
# Copyright:: Copyright (c) 2008 Amos King
# License::   Released under the MIT license

require 'base64'

class DataBank
  # Stores a base64 encoded representation of a class at
  # the end of the file it is called from.  Also adds the
  # __END__ directive to let the interperter know not to
  # go beyond that point.  On subsequent calls it will
  # replace the data with the new data passed in.
  def self.deposit(data)
    code = File.read($0).gsub(/\n^__END__.*$/m, '')
    File.open($0, 'w') do |file|
      file.write "#{code}\n__END__\n"
      file.write Base64.encode64(Marshal.dump(data))
    end
  end
  
  # Loads the data stored at the end of the file form
  # which it is called.  If data is present.
  def self.withdraw
    Marshal.load(Base64.decode64(DATA.read)) rescue NameError
  end
end