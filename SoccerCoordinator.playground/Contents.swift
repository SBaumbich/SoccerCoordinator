//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Scott's comment

/* Part 1:
Choose the appropriate data type to store players information and create an empty collection variable to hold all the players’ data.
 */
// Create an array of dictionaries holding player info
let players : [[ String:String ]] = [
    ["name": "Joe Smith", "height": "42", "experience": "YES", "guardians": "Jim and Jan Smith"],
    ["name": "Jill Tanner", "height": "36", "experience": "YES", "guardians" : "Clara Tanner"],
    ["name": "Bill Bon", "height": "43", "experience": "YES", "guardians" : "Sara and Jenny Bon"],
    ["name": "Eva Gordon", "height": "45", "experience": "NO", "guardians" : "Wendy and Mike Gordon"],
    ["name": "Matt Gill", "height": "40", "experience": "NO", "guardians" : "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein", "height": "41", "experience": "NO", "guardians" : "Bill and Hillary Stein"],
    ["name": "Sammy Adams", "height": "45", "experience": "NO", "guardians" : "Jeff Adams"],
    ["name": "Karl Saygan", "height": "42", "experience": "YES", "guardians" : "Heather Bledsoe"],
    ["name": "Suzane Greenberg", "height": "44", "experience": "YES", "guardians" : "Henrietta Dumas"],
    ["name": "Sal Dali", "height": "41", "experience": "NO", "guardians" : "Gala Dali"],
    ["name": "Joe Kavalier", "height": "39", "experience": "NO", "guardians" : "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein", "height": "44", "experience": "NO", "guardians" : "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto", "height": "41", "experience": "YES", "guardians" : "Robin and Sarika Soto"],
    ["name": "Chloe Alaska", "height": "47", "experience": "NO", "guardians" : "David and Jamie Alaska"],
    ["name": "Arnold Willis", "height": "43", "experience": "NO", "guardians" : "Claire Willis"],
    ["name": "Phillip Helm", "height": "44", "experience": "YES", "guardians" : "Thomas Helm and Eva Jones"],
    ["name": "Les Clay", "height": "42", "experience": "YES", "guardians" : "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": "45", "experience": "YES", "guardians" : "Hyman and Rachel Krustofski"]
]

/* Part 2:
Create logic that can iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own new collection variable
*/

var numberOfTeams = 3

// Arrays to seperate players with and whithout experance
var playersWithExp  : [[String:String]] = []
var playersWithoutExp : [[String:String]] = []

// Team arrays
var teamShark: [[String:String]] = []
var teamDragon: [[String:String]] = []
var teamRaptor: [[String:String]] = []

// Seperate players into appropriate arrays based on Exp
for player in players {
    if player["experience"] == "YES" {
        playersWithExp.append(player)
    } else {
        playersWithoutExp.append(player)
    }
}

// Method to assign players evenly to teams
func assignPlayers(players: [[String:String]]) {
    if players.count % numberOfTeams == 0 {
        var count = 0
        while count < players.count {
            teamShark.append(players[count])
            count = count + 1
            teamDragon.append(players[count])
            count = count + 1
            teamRaptor.append(players[count])
            count = count + 1
        }
    } else {
        print ("The number of experienced players on each team is uneven")
    }
}

// Assign players to teams evenly
assignPlayers(playersWithExp)
assignPlayers(playersWithoutExp)

/*
Part 3: Create logic that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team their child has been placed on and when they should attend their first team team practice. 
*/

// Method to send personalized letters
func personalizedLetter(teamCollection: [[String:String]], teamName: String, date: String, time: String) {
    for player in teamCollection {
        print("Hello \(player["guardians"]!), \n Team \(teamName) is excitedt to have \(player["name"]!) as a member of the community. Our first practice will be held on \(date) at \(time). Bring a ball to kick around and come ready to play. ")
    }
}

// Send personalized letters
personalizedLetter(teamShark, teamName: "Shark", date: "March 17", time: "3pm")
personalizedLetter(teamDragon, teamName: "Dradon", date: "March 17", time: "1pm")
personalizedLetter(teamRaptor, teamName: "Raptor", date: "March 18", time: "1pm")
 
 
