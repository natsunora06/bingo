class Garagara


  def initialize
    # ガラガラ作成
    machine = []

    (1..99).each {|number|
      machine.push(number)
    }

    machine.shuffle!
    
    @getnumber = machine

  end


  def getNumber

    @getnumber



  end
  
end
