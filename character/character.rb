#character.rb

# require_relative

ailments = { "Consumption" => 1, "Space Aids" => 2 }

class Character
  def initialize(name)
  # Instance Variables
  @name = name
  @ailments = {}
  end

  def display
  puts "You are #{@name}"
  end

  def applyDisease(disease, time)
    @ailments[disease] = time
  end

  def timeCount
    @ailments.each_key do |key|
      timeLeft = @ailments[key]
      @ailments[key] = timeLeft - 1
    end

 end

 #ailments = { "Consumption" => 1, "Space Aids" => 2 }

j = Character.new('Jefe')
#j.display
j.applyDisease("Consumption", 4)
j.timeCount()
newHash = j.instance_variable_get(:@ailments)
puts newHash

end