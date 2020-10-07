# your code goes here



class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def set_point(point, amount_being_set)
        max_point = 10
        min_point = 0
        if amount_being_set >= max_point then
            point = max_point
        elsif  amount_being_set <= max_point && amount_being_set >= min_point then
            point =  amount_being_set
        else
            point = min_point
        end

        point
    end
    
    def happiness=(amount_being_set)
        @happiness = set_point(@happiness, amount_being_set)
    end

    def hygiene=(amount_being_set)
        @hygiene = set_point(@hygiene, amount_being_set)
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
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

    def call_friend(person_instance)
        self.happiness += 3
        person_instance.happiness += 3
        "Hi #{person_instance.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person_instance, topic)
        if topic == "politics" then
            person_instance.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather" then
            person_instance.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end