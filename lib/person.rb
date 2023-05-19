class Person
    attr_accessor :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def name
      @name
    end
  
    def happiness=(new_happiness)
      @happiness = new_happiness.clamp(0, 10)
    end
  
    def hygiene=(new_hygiene)
      @hygiene = new_hygiene.clamp(0, 10)
    end
  
    def happy?
      happiness > 7
    end
  
    def clean?
      hygiene > 7
    end
  
    def get_paid(amount)
      self.bank_account += amount
      "all about the benjamins"
    end
  
    def take_bath
      self.hygiene += 4
      self.hygiene = 10 if hygiene > 10
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.hygiene -= 3
      self.hygiene = 0 if hygiene.negative?
      self.happiness += 2
      self.happiness = 10 if happiness > 10
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      self.happiness = 10 if happiness > 10
      friend.happiness = 10 if friend.happiness > 10
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  
    def start_conversation(person, topic)
      if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        self.happiness = 0 if happiness.negative?
        person.happiness = 0 if person.happiness.negative?
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
        self.happiness = 10 if happiness > 10
        person.happiness = 10 if person.happiness > 10
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
  
    private
  
    def name=(new_name)
      @name = new_name
    end
  end