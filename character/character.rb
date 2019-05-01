#character.rb

# require_relative

ailments = { "Consumption" => 1, "Space Aids" => 2 }


# Character Creation
class Character
  def initialize(name)
    # Instance Variables
  @name = name
  @ailments = {}
  end

  def display
    puts "You are #{@name}"
  end

  #Adding Conditions
  def applyDisease(disease, time)
    @ailments[disease] = time
  end

  #Introducing Entropy
  def timeCount
    @ailments.each_key do |key|
    timeLeft = @ailments[key]
    @ailments[key] = timeLeft - 1
      timeLeft = @ailments[key]
      @ailments[key] = timeLeft - 1
    end
  
  def writeCharacterSheet
    File.write("./#{@name}.txt", "#{@name}\n#{@ailments}\n")
  end

 end

 #ailments = { "Consumption" => 1, "Space Aids" => 2 }

j = Character.new('Jefe')
#j.display
j.applyDisease("Consumption", 4)
j.timeCount()


end
