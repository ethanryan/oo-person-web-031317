class Person

  attr_reader :name #attr_reader is a 'getter' method, it gets the name of the person.
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
    @happiness
  end

  def hygiene #this is a setter method, it 'sets' the min max values for hygiene
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
    @hygiene
  end

#non-attribute instance method #happy?
  def happy?
    if self.happiness > 7
      true
    else
      false
    end #end if else statement
  end #end method

  #non-attribute instance method #clean?
  def clean?
    if self.hygiene > 7
      true
    else
      false
    end #end if else statement
  end #end method

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end #end method

  #non-attribute instance method #take_bath
  def take_bath
    self.hygiene += 4 #calls on the #hygiene method to increment hygiene by 4 points
    song = "♪ Rub-a-dub just relaxing in the tub ♫" #returns song
  end #end method

  def work_out
    self.hygiene -= 3 #calls on the #hygiene method to decrease hygiene by 3 points
    self.happiness += 2 #calls on the #happiness method to increase happiness by 2 points
    song = "♪ another one bites the dust ♫"
  end

  def friend(name)
    friend = Person.new(name)
  end #end method

  #non-attribute instance method #call_friend
  def call_friend(friend)
    self.happiness += 3 #calls on the #happiness method to increase happiness by 3 points
    friend.happiness += 3
    caller = "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2 #calls on the #happiness method to decrease happiness by 2 points
      person.happiness -= 2 #calls on the #happiness method to decrease happiness by 2 points
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1 #calls on the #happiness method to decrease happiness by 2 points
      person.happiness += 1 #calls on the #happiness method to decrease happiness by 2 points
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end #end else if statement
  end #end method




#   Each instance of the Person class will have the ablity to:
# get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happy and/or clean

end #end class
