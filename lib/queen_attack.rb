#!/usr/bin/env ruby
require('pry')

class Array
  def queen_attack(position)


    def diagonal_check(position)
        xpos = []
        ("a".."h").each do |letter|
          xpos.push(letter)
        end
        ypos = []
        (1..8).each do |number|
          ypos.push(number)
        end

        xdex = xpos.find_index(position[0]).to_i
        ydex = ypos.find_index(position[1]).to_i

        diagonal_array = []
        diagonal_array.push(xpos[xdex + 1 ],ypos[ydex + 1])
        binding.pry

    end

    case
    when position[1] === self[1]
        return true
    when position[0] === self[0]
        return true
    when diagonal_check(position) != false
        return true
    else
        return false
    end
  end

end

["b",4].queen_attack(["c",5])
