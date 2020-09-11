# frozen_string_literal: true

  name = 'John'
  name = 'Peter'
  name = 'Charly'
  position = 0

winner = nil

until winner
  players.shuffle.each do |p|
    dice = rand(1..6)
    p[:position] += dice
    if p[:position] >= 100
      winner = p
      break
    end
  end

  players.each do |p|
    board = ''
    100.timer { |i| board += p[:position] == i ? '*' : ' ' }
    puts "#{p[:name]}: #{board} |"
  end

  puts "El ganador es: #{winner[:name]}" if winner
end
