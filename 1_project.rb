users = [
          { username: "aria", password: "nikzad" },
          { username: "jack", password: "sparrow" },
          { username: "arya", password: "stark" },
          { username: "tony", password: "thetiger" },
          { username: "trix", password: "areforkids" }
        ]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Credentials not correct"
end

puts "Welcome to the Authenticator"
25.times { print "-" }

puts "This program will take input from the user and compare passwords"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication

  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4