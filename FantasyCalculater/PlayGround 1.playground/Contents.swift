//: Playground - noun: a place where people can play

import UIKit


//Creating values for all of the different scoring

let defGoal = 6
let midGoal = 5
let STGoal = 4
let assist = 3
let cleanSheet = 4
let midCleanSheet = 1
let bonus1 = 3
let bonus2 = 2
let bonus3 = 1
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
minutes += played(minutes: 1)

// Calculating value for number of saves
func saves(fromGoals: Int) -> Int {
    return fromGoals/3

}

// Do a calculation based on GoalKeepers saves
saves += saves(fromGoals: 1)

//Calculating how many points to subtract when goals are conceded.
func goalsConceded (goalsAgainst: Int) -> Int {
    return goalsAgainst / -2
}

//Testing goals conceded
goalsConceded += goalsConceded(goalsAgainst: 4)

// Calculating scores for your GoalKeeper

let goalieScore = defGoal * 0 + assist * 0 + yellowCard * 0 + redCard * 0 + bonus1 * 0 + bonus2 * 0 + bonus3 * 0 + cleanSheet * 0 + penMiss * 0 + ownGoal * 0 + played(minutes: 91) + goalsConceded(goalsAgainst: 5)


//Calculating total scores for your defenders

let defendersScore = defGoal * 3 + assist * 2 + yellowCard * 0 + redCard * 0 + bonus1 * 0 + bonus2 * 0 + bonus3 * 0 + cleanSheet * 0 + penMiss * 0 + ownGoal * 0

let defenderOne = played(minutes: 92) + goalsConceded(goalsAgainst: 0)

let defenderTwo = played(minutes: 93) + goalsConceded(goalsAgainst: 0)

let defenderThree = played(minutes: 90) + goalsConceded(goalsAgainst: 2)

let defenderFour = played(minutes: 0) + goalsConceded(goalsAgainst: 0)

let defenderFive = played(minutes: 27) + goalsConceded(goalsAgainst: 0)

let totalDefendersScore = defendersScore + defenderOne + defenderThree + defenderFour + defenderFive

//Calculating scores for your midfielders

let midfieldersScore = midGoal * 2 + assist * 0 + yellowCard * 1 + redCard * 0 + bonus1 * 0 + bonus2 * 0 + bonus3 * 0 + midCleanSheet * 0 + penMiss * 0 + ownGoal * 0

let midfielderOne = played(minutes: 90)

let midfielderTwo = played(minutes: 91)

let midfielderThree = played(minutes: 90)

let midfielderFour = played(minutes: 58)

let midfielderFive = played(minutes: 0)

let totalMidfieldersScore = midfieldersScore + midfielderOne + midfielderTwo + midfielderThree + midfielderFour + midfielderFive

//Calculating your forwards scores

let forwardsScores = STGoal * 3 + assist * 2 + yellowCard * 1 + redCard * 2 + bonus1 * 0 + bonus2 * 0 + bonus3 * 0 + penMiss * 0 + ownGoal * 0

let forwardOne = played(minutes: 75)

let forwardTwo = played(minutes: 88)

let forwardThree = played(minutes: 90)

let totalForwardsScores = forwardsScores + forwardOne + forwardThree

let overallWeeekScore = goalieScore + totalDefendersScore + totalMidfieldersScore + totalForwardsScores

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

//reportingScore(totalScore: totalScore)
