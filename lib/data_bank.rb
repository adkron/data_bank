require 'base64'

class DataBank
  def self.deposit(data)
    code = File.read($0).gsub(/\n^__END__.*$/m, '')
    File.open($0, 'w') do |file|
      file.write "#{code}\n__END__\n"
      file.write Base64.encode64(Marshal.dump(data))
    end
  end
  
  def self.withdraw
    begin
      Marshal.load(Base64.decode64(DATA.read))
    rescue NameError
      puts 'can not reload data'
    end
  end
end