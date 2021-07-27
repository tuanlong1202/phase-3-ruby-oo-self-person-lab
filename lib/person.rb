# your code goes here
class Person
    
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    
    def initialize(person_name,money=25,happy=8,hygiene=8)
        @name = person_name
        @bank_account = money
        if (happy >= 0) && (happy <= 10)
            @happiness = happy
        else
            if happy > 10
                @happiness = 10
            elsif happy < 0
                @happiness = 0
            end
        end
        if hygiene >= 0 && hygiene <= 10
            @hygiene = hygiene
        else
            if hygiene > 10
                @hygiene = 10
            elsif hygiene < 0
                @hygiene = 0
            end
        end
    end
    
    def happiness=(happy)
        if happy > 10
            @happiness = 10
        elsif happy < 0
            @happiness = 0
        else
            @happiness = happy
        end
    end
    
    def happiness
        @happiness
    end
    
    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end
    
    def hygiene
        @hygiene
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(objFriend)
        self.happiness += 3
        objFriend.happiness += 3
        "Hi #{objFriend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(objFriend,topic)
        strRet = ""
        case topic
            when "politics"
                strRet = "blah blah partisan blah lobbyist"
                self.happiness -= 2
                objFriend.happiness -= 2
            when "weather"
                strRet = "blah blah sun blah rain"
                self.happiness += 1
                objFriend.happiness += 1
            else
                strRet = "blah blah blah blah blah"
        end
        strRet
    end
    
end