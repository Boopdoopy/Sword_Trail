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
    end
  end
  
  def writeCharacterSheet
    File.write("./#{@name}.txt", "#{@name}\n#{@ailments}\n")
  end


  def printCharacter
    puts "#{@name}\n#{@ailments}\n"
  end
 end

 #ailments = { "Consumption" => 1, "Space Aids" => 2 }

  def readCharacterSheet(char)
    File.open(char + ".txt", "r") do |f|
      char = Character.new(f.gets)
      
      @ailments = f.gets
    end
  end
j.readCharacterSheet()
j.printCharacter()

