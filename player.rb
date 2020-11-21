class Player

    def initialize(name)
        @name = name
        @hp = 20
        @ap = 10
    end

    # getter name
    def name
        @name
    end

    #getter ap
    def ap
        @ap
    end

    #getter hp
    def hp
        @hp
    end

    #setter hp
    def hp=(points)
        @hp = points
    end

    def dead?
        @hp <= 0
    end

    def attacks(defender)
        puts "> #{self.name} attacks #{defender.name}"
        damage = rand(self.ap) + 1

        defender.take_damage(damage)
    end

    def take_damage(points)
        puts "> #{@name} is taking #{points} damage points"
        @hp -= points  
    end

end