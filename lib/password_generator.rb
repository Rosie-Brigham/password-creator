class PasswordGenerator 
  attr_accessor :length

# store the desired length of the password
  def initialize(desired_length)
    @length = desired_length
  end

# create a password the same length as that desired
  def generate
    @password = (1..@length).map { (33 + rand(89)).chr }.join 
    check_password_contents
    @password
  end

# check that contents contains letters, numbers and punctuation, and if not, re-generate the password
  def check_password_contents
    if /[a-zA-Z]+/.match(@password) && /\d+/.match(@password) && /[[:punct:]]/.match(@password)
    else
      generate
    end
  end
end
