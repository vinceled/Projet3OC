//
//  main.swift
//  Project3OC
//
//  Created by Mark LEDOUX on 05/06/2019.
//  Copyright © 2019 Mark LEDOUX. All rights reserved.
//

import Foundation

var welcomeToGame = "Welcome to the Ultimate Fantasy Game!"
    print(welcomeToGame)
print("Time to choose names!")
print("Player 1, your turn!")
print("Please enter your name!")

var player1 = Player(name: readLine()!)

print("Player 2, your turn!")
print("Please enter your name!")

var player2 = Player(name: readLine()!)
