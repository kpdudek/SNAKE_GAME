#usr/bin/python
#Coding: utf-8

import numpy as np
import math
import matplotlib
import matplotlib.pyplot as plt


class Snake(object):
	def __init__(self):
		self.x = 0
		self.y = 0
		self.x1 = 0
		self.x2 = 0
		self.x_vel = 0
		self.y_vel = 0
		self. avail = 0
		self.game_board = 0
		self.snake = []
		self.moves = []
		self.walls = []

	def Set_Board(self,n):
		self.game_board = np.zeros((n+2,n+2))
		self.game_board[0,:] = 1
		self.game_board[n+1,:] = 1
		self.game_board[:,0] = 1
		self.game_board[:,n+1] = 1
		
		top = []
		bot = []
		rgt = []
		lft = []
		for i in range(n+2):
			top.append((0,i))
			bot.append((n+1,i))
			rgt.append((i,n+1))
			lft.append((i,0))
		if top not in self.walls:
			self.walls.append(top)
		if bot not in self.walls:
			self.walls.append(bot)
		if rgt not in self.walls:
			self.walls.append(rgt)
		if lft not in self.walls:
			self.walls.append(lft)

		
	def First_Move(self,x,y):
		self.game_board[x,y] = 1
		self.x = x
		self.y = y
	
	def Possible_Moves(self):
		moves = [(self.x+1,self.y),(self.x-1,self.y),(self.x,self.y+1),(self.x,self.y-1)]
		possible = []
		for x in range(len(moves)):
			if (moves[x] not in self.snake) and (moves[x] not in self.walls):
				possible.append(moves[x])
		if len(possible) > 0:
			return moves[0]
		else:
			return 0 
		
	def Move(self,moves):
		self.x1 = self.x
		self.y1 = self.y
		
		self.x = moves[0]
		self.y = moves[1]

		self.snake.append([self.x,self.y])
	
		self.game_board[self.x,self.y] = 1
		













































