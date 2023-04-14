# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
     def initialize(name, say)
        @name = name
        @color = "Silver"
        @say = say
    end
end

unicorn1 = Unicorn.new("Charlie", "*~* Let's go to Candy Mountain *~*")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :pet, :thirsty, :drink

    def initialize(name, pet = "bat")
        @name = name
        @thirsty = true
        @pet = pet
    end
    def drink_blood(content)
        @thirsty = content
    end
end

vamp1 = Vampire.new("Vladimir")
vamp2 = Vampire.new("Nosferatu", "Chihuahua")
vamp1.drink_blood(false)

p vamp1
p vamp2


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry


class Dragon
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @food = 0
    end
    def eats
        @food += 1
        if @food >=4
            @is_hungry = false
        end
    end
end 

dragon1 = Dragon.new("Stuff", "Jamahl Mosley", "Green")
p dragon1
dragon1.eats
dragon1.eats
dragon1.eats
dragon1.eats



p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.


class Hobbit
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = is_frodo
    end
    def celebrate_birthday
      @age += 1
      if  @age == 33 
        @is_adult = true
      end
      if @age == 101
        @is_old = true
      end
    end
    def is_frodo
        if @name == "Frodo"
            @has_ring = true
        end
    end
end

p hobbit1
#Watch our hobbit friend age right before your eyes
hobbit1 = Hobbit.new("Frodo", "Happy")
33.times do
    hobbit1.celebrate_birthday
end

p hobbit1
#Hobbit is about to have some gray hairs
101.times do
  hobbit1.celebrate_birthday
end

p hobbit1