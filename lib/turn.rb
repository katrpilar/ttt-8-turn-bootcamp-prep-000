def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board.length == 0
    return
  elsif (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(board,index)
  if index.between?(0,8)
    if position_taken?(board,index)
      return false
    else 
      return true
    end
  else
    return false
  end
end

# code your input_to_index and move method here!
def input_to_index(num)
  num = num.to_i
  index = num - 1
end

def move(board,index,character="X")
  board[index] = character
  return board
end

<<<<<<< HEAD

=======
>>>>>>> c8472ba5639aa6be74538942d9c337a712090ae0
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  realindex = input_to_index(input)
<<<<<<< HEAD
  if valid_move?(board,realindex)
    move(board,realindex)
    display_board(board)
    #return turn(board)
  else
    return turn(board)
=======
  success = 0
  until success == 9
    if valid_move?(board,realindex)
      move(board,realindex)
      display_board(board)
      turn(board)
    else
      turn(board)
    end
>>>>>>> c8472ba5639aa6be74538942d9c337a712090ae0
  end
end