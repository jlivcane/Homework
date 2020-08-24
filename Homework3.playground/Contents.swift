import Foundation
/*
Exercise 1
The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate) is 11%. Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
*/
let rate = 11
let period = 1
let amount = 500000

var annumProfit = amount * rate / 100
var profit = 0
for _ in 1...period{
profit += annumProfit
 }
var deposit = profit + amount

 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur!")


/*
Exercise 2
Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
*/
let integerArray = [1,2,3,4,5,6,7,8]
var evenNumber = 0
for evenNumber in integerArray {
    if evenNumber % 2 == 0 {
        print("My even numbers are: \(evenNumber)")
}
}

/*
Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
*/

let setOfNumbers = [1,2,3,4,5,6,7,8]
var counter = 0
for randomNumber in setOfNumbers {
    counter += 1
     if randomNumber == 5 {
        break
    }
}
print("Number 5 will be after \(counter) shuffles.")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
let postHeight = 10
let heightClimbed = 2
let heightSlides = -1
var numberOfDays = 0

numberOfDays = ((postHeight + heightSlides - 1) / (heightClimbed + heightSlides))+1
print("bug will spend \(numberOfDays) days to reach top of the post")
