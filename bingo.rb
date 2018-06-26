require './player.rb'
require './garagara.rb'
require './card.rb'


class Bingo
  
  

  def keypress
    card = Card.new
    cardTwo = Card.new

    print "Player 1"
    card.printCard

    print "\n"
    print "\n"
    print "Player 2"
    cardTwo.printCard

    garagara = Garagara.new


     chenge = 0
      while(true)

        print "\nエンターキーを押しましょう:"
        input = gets.to_i
        if input != nil then
          @sample = garagara.getNumber

          print "\n", "ガラガラの番号は　", @sample[chenge], "\n"
          @count = card.putNumber(@sample[chenge])
          @countTwo = cardTwo.putNumber(@sample[chenge])

          chenge += 1

          print "Player 1 "
          card.printCard
          print "\n"

          print "\n"
          print "Player 2 "
          cardTwo.printCard

          if @count == true then
            print "\n"
            p "Winner : Player1"
            break
          elsif @countTwo == true then
            print "\n"
            p "Winner : Player2"
            break
          end


          # @count = card.putNumber

        end
      end
     
  end
  
  
  def judgeNum

  
  end

  
end

bingo = Bingo.new

bingo.keypress
# bingo.judgeNum(card.getNumber)

