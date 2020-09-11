class Race

    players = [{ name ="John" => position = 0, name ="Peter" => position = 0, name ="Charly" => position = 0}]

    winner = nil

    until !winner
        players.each do |p|
                dice = 1 + rand(6)
                p[:position] += dice
            if position >= 100
                winner = p
            break
            end
        end
    end
end