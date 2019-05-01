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
<<<<<<< HEAD
    timeLeft = @ailments[key]
    @ailments[key] = timeLeft - 1
=======
      timeLeft = @ailments[key]
      @ailments[key] = timeLeft - 1
    end
  
  def writeCharacterSheet
<<<<<<< HEAD
    File.write("./#{@name}.txt", "#{@name}\n#{@ailments}\n")
=======
    File.write("./#{@name}.txt", "#{@name}\n#{@ailments}\n"
>>>>>>> 9e2ab9d051c8dcc508d6363fb431f136e8dac2b5
>>>>>>> 77d99bcfcb87c136499d00d65ef28db4acf0a5f2
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
