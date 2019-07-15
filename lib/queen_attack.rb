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

      xdex = xpos.find_index(self[0]).to_i
      ydex = ypos.find_index(self[1]).to_i

      diagonal_array = [""]
      counter = 1
      array_added = false
      loop do
        if xdex + counter < 8 && ydex + counter < 8
          diagonal_array.push([xpos[xdex + counter ],ypos[ydex + counter]])
          array_added = true
        end
        if xdex + counter < 8 && ydex - counter >= 0
          diagonal_array.push([xpos[xdex + counter ],ypos[ydex - counter]])
          array_added = true
        end
        if xdex - counter >= 0 && ydex - counter >= 0
          diagonal_array.push([xpos[xdex - counter],ypos[ydex - counter]])
          array_added = true
        end
        if xdex - counter >= 0 && ydex + counter < 8
          diagonal_array.push([xpos[xdex - counter ],ypos[ydex + counter]])
          array_added = true
        end
        counter += 1
        break if array_added == false
        array_added = false
      end

      diagonal_array.each do |element|

        if element == position
          return true
        end
      end
    end

    case
    when position[1] === self[1]
      return true
    when position[0] === self[0]
      return true
    when diagonal_check(position) == true
      return true
    else
      return false
    end

  end

end
