module Players
  class Computer < Player
    
    def move(board)
      #Very basic random implementation, added at least one strategy to make first move spot 5
      move_spot = nil
      open_space = board.cells.each_index.select{|i| board.cells[i] == " "}
      if open_space.include?(4)
        move_spot = "5"
      else
      move_spot = (open_space.sample + 1).to_s
    end
      move_spot
    end
  
  end 
end