puts "--- TICY TACY TOE ---"
board = Array.new(3) {Array.new(3,'.')}

def show_board board
    for i in 0...3
        print "\t"
        for j in 0...3
            print board[i][j]," "
        end
        print "\n"
    end
end


def check_board(board)
    return true if board[0][0] == board[0][1] && board[0][1] == board[0][2] && board[0][1] !='.'
    return true if board[1][0] == board[1][1] && board[1][1] == board[1][2] && board[1][1] !='.'
    return true if board[2][0] == board[2][1] && board[2][1] == board[2][2] && board[2][1] !='.'
    
    return true if board[0][0] == board[1][0] && board[1][0] == board[2][0] && board[1][0] !='.'
    return true if board[0][1] == board[1][1] && board[1][1] == board[2][1] && board[1][1] !='.'
    return true if board[0][2] == board[1][2] && board[1][2] == board[2][2] && board[1][2] !='.'
    
    return true if board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[1][1] !='.'
    return true if board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[1][1] !='.'
    
    return false
end

counter = 0

until check_board(board) || counter == 9 do
    show_board(board)
    mark = 'X' if counter % 2
    mark = 'O' if counter % 2 == 0
    puts "Enter Position (row,coln) to mark #{mark}"
    i =  gets.to_i
    j =  gets.to_i
    if i>0 && j>0 && i<4 && j<4 && board[i-1][j-1] == '.' 
        board[i -1][j-1] = mark 
        counter +=1
    end
end

show_board(board)