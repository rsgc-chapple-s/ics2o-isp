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
        return "awful, look to sign some new players and maybe a whole new team"
    } else if overallWeekScore >= 21 && overallWeekScore <= 39 {
        return "not a very good performance, try to make some improvements"
    } else if overallWeekScore >= 40 && overallWeekScore <= 55 {
        return "decent, your is about average"
    }  else if overallWeekScore > 55 && overallWeekScore <= 70 {
        return "pretty good, you are doing well"
    } else if overallWeekScore > 70 {
        return "excellent, your team is top notch quility"
    }
 return "Nice work mate"
}

//Reporting goalies scores

func reportingGKScore(goalieScore: Int) -> String {
    if goalieScore < 1 {
        return "was garbage, sign someone new"
    } else if goalieScore >= 1 && goalieScore <= 2 {
        return "didn't put in a good performance but give him another chance if you feel like it"
    } else if goalieScore == 3 {
        return "was alright, nothing much else I can say"
    } else if goalieScore >= 4 && goalieScore <= 6 {
        return "was pretty good, he probably plays for a good team with some good defenders"
    } else if goalieScore > 6 && goalieScore <= 8 {
        return "was excellent, special night for him"
    } else if goalieScore > 8 {
        return "was world class, I want you're goalie for my team now that I have seen what he can do"
    }
    return "Nice one mate, I like you're style"
}

//Reporting defenders scores

func reportingDefScores(totalDefendersScore: Int) -> String {
    if totalDefendersScore < 4 {
        return "not very good, some improvements are needed here"
    } else if totalDefendersScore >= 4 && totalDefendersScore <= 8 {
        return "okay, looks like your defenders are holding their own"
    } else if totalDefendersScore > 8 && totalDefendersScore <= 14 {
        return "alright, they did the dirty work and got it done well, nice job"
    } else if totalDefendersScore > 14 && totalDefendersScore < 20 {
        return "good, nice work mate"
    } else if totalDefendersScore >= 20 {
        return "excellent!! the best teams in the world will be calling wanting you're defenders after this performance"
    }
    return "A nice look at you're defence, now lets move on"
}

// Reporting mids scores

func reportingMidScores(totalMidfieldersScore: Int) -> String {
    if totalMidfieldersScore < 9 {
        return "rubbish, get some new midfielders in you're squad"
    } else if totalMidfieldersScore >= 9 && totalMidfieldersScore <= 15 {
        return "not very good"
    } else if totalMidfieldersScore > 15 && totalMidfieldersScore < 25 {
        return "decent"
    } else if totalMidfieldersScore >= 25 && totalMidfieldersScore <= 32 {
        return "great, I would love my mids to perform as well as your's"
    } else if totalMidfieldersScore > 32 {
        return "world class, I have nothing else to say other than world class mate, nice job"
    }
    return "Congrats mate on the midfield"
}

// Reporting Stikers scores

func reportingForwardsScores(totalForwardsScores: Int) -> String {
    if totalForwardsScores < 6 {
        return "not very good, to have a good team your strikers must perform"
    } else if totalForwardsScores >= 6 && totalForwardsScores < 11 {
        return "okay, wish for better luck next week but this is not bad"
    } else if totalForwardsScores >= 11 && totalForwardsScores < 15 {
        return "pretty good, nice job"
    } else if totalForwardsScores >= 15 && totalForwardsScores <= 20 {
        return "good, you can't ask for much more than that"
    } else if totalForwardsScores > 20 {
        return "brilliant, what an attacking display, I love it"
    }
    return "Well that's it for your attackers"
}

    
func reportOnTeamsPerformance(reportingScore: String, reportingGKScore: String, reportingDefScores: String, reportingMidScores: String, reportingForwardsScores: String) {
    print("Your teams overall score and performance was \(overallWeekScore). Your goalie \(goalieScore). Your defenders were \(totalDefendersScore). Your midfielders were \(totalMidfieldersScore). Your strikers were \(totalForwardsScores)")
}

// Testing all of the reports

let weekScoreReport = reportingScore(overallWeekScore: overallWeekScore)

let goalieScoreReport = reportingGKScore(goalieScore: goalieScore)

let defReportScore = reportingDefScores(totalDefendersScore: totalDefendersScore)

let midReportScore = reportingMidScores(totalMidfieldersScore: totalMidfieldersScore)

let strikerReportScore = reportingForwardsScores(totalForwardsScores: totalForwardsScores)

 reportOnTeamsPerformance(reportingScore: weekScoreReport, reportingGKScore: goalieScoreReport, reportingDefScores: defReportScore, reportingMidScores: midReportScore, reportingForwardsScores: strikerReportScore)
