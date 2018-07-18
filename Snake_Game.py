#usr/bin/python
#Coding: utf-8

import time
import sys
import numpy as np
import math
import matplotlib
import matplotlib.pyplot as plt
from Snake_Class import Snake

#Color map definition
colors = ["black","green"]
cmap = matplotlib.colors.ListedColormap(colors)


#Initializing the snake
snake = Snake()
snake.Set_Board(25)
snake.First_Move(2,2)



#Game loop
while True:
	
	moves = snake.Possible_Moves()
	if moves == 0:
		break


	snake.Move(moves)
	
	#Display the turn
	plt.imshow(snake.game_board,interpolation='nearest',origin='lower',cmap=cmap)
	plt.show()






































