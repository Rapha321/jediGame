require_relative './player'


class Game
    
    # constructor
    def initialize
        @player1 = Player.new("Princess Donuts Head")
        @player2 = Player.new("Obi Wan")
        @round = 1
    end

    def play
        
        attack_jedi = @player1
        defend_jedi = @player2

        while (attack_jedi.hp > 0 && defend_jedi.hp > 0) do
            puts "---------------------"
            puts "\t Round #: #{@round}"
            puts "---------------------"

            puts "> #{attack_jedi.name} attacks #{defend_jedi.name}"
            damage = rand(attack_jedi.ap) + 1

            puts "> #{defend_jedi.name} is taking #{damage} damage points"

            defend_jedi.hp -= damage

            puts "---------------------"
            puts "\t Game Status"
            puts "---------------------"
            puts "#{attack_jedi.name} HP: #{attack_jedi.hp}"
            puts "#{defend_jedi.name} HP: #{attack_jedi.hp}"

            @round += 1
        end

    end

end