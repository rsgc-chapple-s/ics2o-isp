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

let goalieScore = assist * 0 + cleanSheet * 1 + played(minutes: 90) + goalsConceded(goalsAgainst: 0) + saves(fromGoals: 5)


//Calculating total scores for your defenders

let defendersScore = defGoal * 0 + assist * 1 + cleanSheet * 2

let defenderOne = played(minutes: 90) + goalsConceded(goalsAgainst: 0)

let defenderTwo = played(minutes: 90) + goalsConceded(goalsAgainst: 2)

let defenderThree = played(minutes: 90) + goalsConceded(goalsAgainst: 0)

let defenderFour = played(minutes: 0) + goalsConceded(goalsAgainst: 0)

let defenderFive = played(minutes: 0) + goalsConceded(goalsAgainst: 0)

let totalDefendersScore = defendersScore + defenderOne + defenderTwo + defenderThree + defenderFour + defenderFive

//Calculating scores for your midfielders

let midfieldersScore = midGoal * 0 + assist * 1 + midCleanSheet * 2

let midfielderOne = played(minutes: 90)

let midfielderTwo = played(minutes: 88)

let midfielderThree = played(minutes: 0)

let midfielderFour = played(minutes: 0)

let midfielderFive = played(minutes: 0)

let totalMidfieldersScore = midfieldersScore + midfielderOne + midfielderTwo + midfielderThree + midfielderFour + midfielderFive

//Calculating your forwards scores

let forwardsScores = STGoal * 0 + assist * 0

let forwardOne = played(minutes: 90)

let forwardTwo = played(minutes: 90)

let forwardThree = played(minutes: 90)

let totalForwardsScores = forwardsScores + forwardOne + forwardTwo + forwardThree

let generalScores = yellowCard * 0 + redCard * 0 + bonus1 * 1 + bonus2 * 2 + bonus3 * 0 + penMiss * 0 + ownGoal * 0

let overallWeekScore = goalieScore + totalDefendersScore + totalMidfieldersScore + totalForwardsScores + generalScores


//writing a report on you're overall week score

func reportingScore(overallWeekScore: Int) -> String {
    if overallWeekScore < 20 {
        return "That is an awful score I would suggest improvements to your squad"
    } else if overallWeekScore >= 21 && overallWeekScore <= 39 {
        return "That score is okay but you should want better"
    } else if overallWeekScore >= 40 && overallWeekScore <= 55 {
        return "That is a decent score, about average"
    }  else if overallWeekScore > 55 && overallWeekScore <= 70 {
        return "That is a pretty good score, you are doing well"
    } else if overallWeekScore > 70 {
        return "Excellent work, your team is top notch quility"
    }
 return "Nice work mate"
}

//Reporting goalies scores

func reportingGKScore(goalieScore: Int) -> String {
    if goalieScore < 1 {
        return "Your goalie is garbage, sign someone new"
    } else if goalieScore >= 1 && goalieScore <= 2 {
        return "Your goalie hasn't put in a good performance but give him another chance if you feel like it"
    } else if goalieScore == 3 {
        return "Thats alright man, I'd take that from my goalkeeper anyday"
    } else if goalieScore >= 4 && goalieScore <= 6 {
        return "That is pretty good, your goalie probably plays for a good team with good defenders"
    } else if goalieScore > 6 && goalieScore <= 8 {
        return "excellent performance mate, special night for you're goalie"
    } else if goalieScore > 8 {
        return "A world Class performance, I want you're goalie for my team now that I have seen what he can do"
    }
    return "Nice one mate, I like you're style"
}

//Reporting defenders scores

func reportingDefScores(totalDefendersScore: Int) -> String {
    if totalDefendersScore < 4 {
        return "Not very good, some improvements are needed here"
    } else if totalDefendersScore >= 4 && totalDefendersScore <= 8 {
        return "Okay, looks like you're defenders are holding their own"
    } else if totalDefendersScore > 8 && totalDefendersScore <= 14 {
        return "Alrighty, you're defenders are doing the dirty work and getting it done well, nice job"
    } else if totalDefendersScore > 14 && totalDefendersScore < 20 {
        return "Can I borrow some of you're defenders because they'd be an upgrade over just about anyone"
    } else if totalDefendersScore >= 20 {
        return "WOOOOOW, excellent performance, the best teams in the world will be calling wanting you're defenders after this performance"
    }
    return "A nice look at you're defence, now lets move on"
}

// Reporting mids scores

func reportingMidScores(totalMidfieldersScore: Int) -> String {
    if totalMidfieldersScore < 9 {
        return "That is rubbish, get some new midfielders in you're squad"
    } else if totalMidfieldersScore >= 9 && totalMidfieldersScore <= 15 {
        return "Eh, not very good"
    } else if totalMidfieldersScore > 15 && totalMidfieldersScore < 25 {
        return "We're getting there, decent"
    } else if totalMidfieldersScore >= 25 && totalMidfieldersScore <= 32 {
        return "Nice, nice, I would love my mids to perform as well as you're mids did"
    } else if totalMidfieldersScore > 32 {
        return "World class, I have nothing else to say other than world class mate, nice job"
    }
    return "Congrats mate on the midfield"
}

// Reporting Stikers scores

func reportingForwardsScores(totalForwardsScores: Int) -> String {
    if totalForwardsScores < 6 {
        return "Not very good, to have a good team you're strikers must perform"
    } else if totalForwardsScores >= 6 && totalForwardsScores < 11 {
        return "That is okay, wish for better luck next week but this is not bad"
    } else if totalForwardsScores >= 11 && totalForwardsScores < 15 {
        return "I see you, that is pretty good"
    } else if totalForwardsScores >= 15 && totalForwardsScores <= 20 {
        return "That is good, can't ask for much more than that"
    } else if totalForwardsScores > 20 {
        return "Brilliant attacking display, I love it"
    }
    return "Well that's it for you're attackers"
}

    
// Testing all of the reports

reportingScore(overallWeekScore: overallWeekScore)

reportingGKScore(goalieScore: goalieScore)

reportingDefScores(totalDefendersScore: totalDefendersScore)

reportingMidScores(totalMidfieldersScore: totalMidfieldersScore)

reportingForwardsScores(totalForwardsScores: totalForwardsScores)