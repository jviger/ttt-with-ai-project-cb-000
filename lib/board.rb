class Board
  
  attr_accessor :cells
  
  def initialize
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
    
  
  def reset!
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  def display
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end
    
  def position(spot)
    self.cells[spot.to_i - 1]
  end
    
  def full?
    self.cells.all?{|token| token == "X" || token == "O"}
  end
  
  def turn_count
    self.cells.count{|token| token == "X" || token == "O"}
  end
  
  def taken?(spot)
    self.cells[spot.to_i - 1 ] == "X" || self.cells[spot.to_i - 1 ] == "O"
  end
  
  def valid_move?(spot)
    spot.to_i.between?(1,9) && !taken?(spot)
  end
  
  def update(spot, player)
    self.cells[spot.to_i - 1] = player.token
  end
    
end