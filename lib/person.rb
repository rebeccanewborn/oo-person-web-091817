# your code goes here
require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(amount)
    if 0 <= amount && amount <= 10
      @happiness = amount
    elsif amount > 10
      @happiness = 10
    elsif amount < 0
      @happiness = 0
    end
  end

  def hygiene=(amount)
    if 0 <= amount && amount <= 10
      @hygiene = amount
    elsif amount > 10
      @hygiene = 10
    elsif amount < 0
      @hygiene = 0
    end
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    num = hygiene + 4
    self.hygiene = num
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    happy = happiness + 2
    self.happiness = (happy)
    clean = hygiene - 3
    self.hygiene = (clean)
    "♪ another one bites the dust ♫"

  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
