class Person

# attr_reader(:age)
# attr_writer

attr_accessor(:name, :age)


  def initialize (name, age)
    @name = name
    @age = age

    puts "Hi, I'm #{@name}! I'm amazing, ding!"
  end

  # def name
  #   @name

  #   end

  # def age
  #   @age

  # end

  def birthday
     @age = @age + 1
   end

  def change_name(name)
    @name = name
    puts "I shall henceforth be always known as #{name}!"
  end

end

jessica = Person.new("Jessica", 26)

# puts "Hello, I'm #{jessica.name}, and I'm #{jessica.age} years old."
# puts "What's up?"

# jessica.birthday

# puts "I just had a birthday 2 miliseconds ago. Now I'm #{jessice.age} years old."

bobby = Person.new("Bobby", 347)

# puts "Hi, I'm #{bobby.name}, and I'm #{bobby.age} years old. This is my friend #{jessica.name}, and she just had a birthday, so she's #{jessica.age}."
# puts "Woah, she just had another birthday, now she's #{jessica.birthday} years old! Dang!"

puts "#{bobby.name} wants to change to his name."
bobby.change_name("Horatio")


# class User

#   def initialize (email, password, username)
#     @email = email
#     @password = password
#     @username = username
#   end

# end

# phil = User.new("email.com", "1234", "@filly")
# lip = User.new("email.com", "1234", "@filly")
# pa = User.new("email.com", "1234", "@filly")





# class Object

#   def initialize(attribute1, attribute2)
#     @attribute1 = attribute1
#     @attribute2 = attribute2
#   end

# end

# class Person

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

# end

# ilyanette = Person.new("Ilyanette", 24)

# puts ilyanette