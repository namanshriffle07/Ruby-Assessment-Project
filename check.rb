class Users 
  def initialize
    File.write("credential.txt","") if !File.exist?("credential.txt")
    File.write("credential.txt","") if !File.exist?("credential.txt")
  end

  def sign_up(username,password)
    registered_users = File.new("credential.txt")    

    present = registered_users.include?(username)

    if(present == true)
      puts "Username already present please try the different one\n"
    else 
      File.open("credential.txt","a") do |file|
        file.puts("#{username} #{password}")
      end
      puts "User registered successfully"
    end
  end
  
  def login(username,password) 
    registered_users = File.read("credential.txt")
    
    present_username = registered_users.include?(username)
    present_password = registered_users.include?(password)
    if(present_username && present_password)
      puts "User logged in successfully"
      return true
    else 
      puts "Please enter a valid credentials"
      return false
    end
  end
end
