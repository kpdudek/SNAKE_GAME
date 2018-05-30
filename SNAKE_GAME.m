function SNAKE_GAME()
s = Snake_Class();
s = s.welcome();
pause(.5)
s = s.first_move();

while true
   s = s.play_game();
end

end



% col = [0,0,0;1,1,1];
% colormap(col)
% mat = ones(25,25)+1;
% mat(5,5) = 1;