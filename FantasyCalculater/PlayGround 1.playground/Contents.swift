//: Playground - noun: a place where people can play

import UIKit


//Creating values for all of the different scoring

var points = 0
let goal = 4
let assist = 3
let cleanSheet = 4
let bonus1 = 3
let bonus2 = 2
let bunus3 = 1
let yellowCard = -1
let redCard = -3
let penMiss = -2
let penSave = 5
let ownGoal = -2
var saves = 0
var minutes = 0
var goalsConceded = 0

//Calculating minutes played
func played(minutes: Int) -> Int {
    
    if minutes > 0 && minutes < 60 {
        return 1
    } else if minutes >= 60 {
            return 2
        } else {
            return 0
        }

}
// Do a calculation based on this player's minutes
minutes += played(minutes: 45)

// Calculating value for number of saves
func saves(fromGoals: Int) -> Int {
    return fromGoals/3

}

// Do a calculation based on GoalKeepers saves
saves += saves(fromGoals: 5)

//Calculating how many points to subtract when goals are conceded.
func goalsConceded (goalsAgainst: Int) -> Int {
    return goalsAgainst / -2
}

//Testing goals conceded
goalsConceded += goalsConceded(goalsAgainst: 4)

//Combining a players score

let totalScore = assist * 1 + redCard + minutes + goalsConceded


        
let coutinhoScore = "Coutinho scored \(totalScore + bonus1) points in fantasy this week"

//writing a report on players score


func reportingScore (totalScore: Int) -> String {
    
    if totalScore > 0 && totalScore < 6 {
        return "That is not a very good score"
    } else if totalScore >= 6 && totalScore <= 11 {
        return "that is a prety good score"
    } else if totalScore > 11 {
        return "that is a really good score"
    }  else {
        return "that is an awful score"
    }
}

reportingScore(totalScore: totalScore)
