require 'pry'

class Person
  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness
    if happiness <= 10
      if happiness > 0
        @happiness = happiness
      else
        @happiness = 0
      end
    else
      @happiness = 10
    end
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    # @hygiene.clamp(0, 10)
    if hygiene <= 10
      if hygiene > 0
        @hygiene = hygiene
      else
        @hygiene = 0
      end
    else
      @hygiene = 10
    end
  end

  def helper?(rating)
    if rating > 7
        true
      else
        false
      end
  end

  def happy?
    helper?(@happiness)

  end

  def clean?
    helper?(@hygiene)
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"  
    end
  end

end
