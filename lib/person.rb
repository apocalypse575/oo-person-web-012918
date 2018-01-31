# your code goes here
require 'pry'

class Person

  attr_reader :name, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    if self.hygiene > 7
      return true
    else
      false
    end
  end

  def happy?
    if self.happiness > 7
      return true
    else
      false
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(amount)
    @hygiene = amount

    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def happiness
    @happiness
  end

  def happiness=(amount)
    @happiness = amount

    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end





  def get_paid(salary_amount)
    self.bank_account += salary_amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4

    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3

    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3

    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == 'politics'
      friend.happiness -= 2
      self.happiness -= 2

      "blah blah partisan blah lobbyist"

    elsif topic == 'weather'
      friend.happiness += 1
      self.happiness += 1

      "blah blah sun blah rain"

    else
      "blah blah blah blah blah"
    end
  end


end
