require "Win32API"  
  
message = "This is a sample Windows message box generated using Win32API"  
title = "Win32API from Ruby"  
 
api = Win32API.new('user32','MessageBox',['L', 'P', 'P', 'L'],'I')  
api.call(0,message,title,0)  