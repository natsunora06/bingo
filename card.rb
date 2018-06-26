
class Card

  def initialize
    # ティッシュボックス作成
    tissueBox = []

    (1..99).each {|number|
      tissueBox.push(number)
    }

    tissueBox.shuffle!
    
    # BINGOカード作成
    a = 0
    b = 4
    row = []
    @bingocard = []


    (1..5).each {|repeat|
      (tissueBox[a..b]).each {|num|
        row.push(num)
        # p row

      }
      @bingocard.push(row)
      row = []

      a += 5
      b += 5
    }
    
  end

  def printCard

    @bingocard.each{|row|
      print "\n"
       row.each_with_index{|number|

         jyunya = number.to_i

         if jyunya == 0 then
           jyunya = " "
         end

         print "|", " ", jyunya ," "

       }
     }
    
  end


  def putNumber(garagaraNumber)

    @bingocard.each{|row|
      row.each_with_index{|number, index|
        if garagaraNumber == number then
          p "同じ数字がある"
          row[index] = nil
        end

      }
    }

    # 行判定
    @bingocard.each{|row|
      rowCount = 0
      row.each{|number|
        if number == nil then
          rowCount += 1
        end
      }
      # p rowCount
      if rowCount == 5 then
        puts("BINGO!")

        return true
      end
    }


    # 列判定
    (0..4).each{|repeat|
      columnCount = 0

      @bingocard.each{|row|
        @column = row[repeat]
        # p @column
        if @column == nil then
          columnCount += 1

        end
      }
      if columnCount == 5 then
        puts("BINGO!")
        return true
      end
    }


    # 列判定(左上スタート)
    count = 0
    countleft = 0
    @bingocard.each {|left|
      @cross = left[count]
      # p @cross
      count += 1

      if @cross == nil then
        countleft += 1
      end

      # p crossCount
      if countleft == 5 then
        puts("BINGO!")
        return true
      end
    }

    # 列判定(右上スタート)
    count = 4
    countRight = 0
    @bingocard.each {|right|

      @crossRight = right[count]
      # p @crossRight
      count -= 1
      if @crossRight == nil then
        countRight += 1
      end

      # p countRight
      if countRight == 5 then
        puts("BINGO!")
        return true
      end
    }









    return false

  end




end
#
# card1 = Card.new
# card1.printCard