require "Win32API"

# Returns the computer name
def getComputerName
  name = " " * 128
  size = "128"
  Win32API.new('kernel32','GetComputerName',['P','P'],'I').call(name,size)
  return name.unpack("A*")
end

# Returns current logged in Windows user name
def getUserName
  name = " " * 128
  size = "128"
  Win32API.new('advapi32','GetUserName',['P','P'],'I').call(name,size)
  return name.unpack("A*")
end

puts "Computer Name: #{getComputerName}"
puts "User Name: #{getUserName}"