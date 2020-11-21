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


end