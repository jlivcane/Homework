

import Foundation

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
 var firstNumber:Float = 3.14
 var secondNumber:Float = 42.0
 var thirdNumber = Double(firstNumber + secondNumber)
 print(thirdNumber)
 
 /*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
 var numberOne:Int = 5
 var numberTwo:Int = 2
 var result:Int = 5 / 2
 var remainder:Int = numberOne % numberTwo
 print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder).")
 
/*
  Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var qty = 11
var price = 1000
var discountPriceOne = 900
var discountPriceTwo = 850
var totalSum = (price * qty)
var totalSumOne = (discountPriceOne * qty)
var totalSumTwo = (discountPriceTwo * qty)

if qty < 5 {
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) EUR")
}else if qty >= 5 && qty < 10 {
    print("new: \(qty) MacBook Pro with the price of: \(discountPriceOne) EUR, will cost you: \(totalSumOne) EUR")
}else if qty >= 10 {
    print("new: \(qty) MacBook Pro with the price of: \(discountPriceTwo) EUR, will cost you: \(totalSumTwo) EUR")
}
/*
  Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
 
var toInt:Int? = 0
var userInputAge = "33a"
toInt = Int(userInputAge)
print(toInt ?? 0)
if toInt != nil {
    print("converting to Int successfull: \(toInt!)")
}else{
    print("converting is nill")
}
 
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

var dateComponent  = DateComponents()
let calendar = Calendar.current
let currentDate = Date()
let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"
let birthDate = formatter.date(from:"07.09.1986")
let todayDate = calendar.date(byAdding: dateComponent, to: currentDate)

let totalYearsFromBirth = Calendar.current.dateComponents([.year], from: birthDate!, to: Date()).year!
print("Total years: \(totalYearsFromBirth)")


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
 
let monthOfBirth = 9
var quarter = ""
switch monthOfBirth{
    case 1...3:
    quarter = " 1 quarter"
    case 4...6:
    quarter = " 2 quarter"
    case 7...9:
    quarter = " 3 quarter"
    case 10...12:
    quarter = " 4 quarter"
    default:
    quarter = "unnown quarter"
}
print("I was born in the\(quarter).")



// revision
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
let floatOne: Float = 3.14
let floatTwo: Float = 42
let someDouble = Double(floatOne + floatTwo)
print("Sum of \(floatOne) and \(floatTwo) are \(someDouble)")
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
let numberOne = 9
let numberTwo = 2
let result = numberOne / numberTwo
let reminder = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(reminder)")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
let qty = 10
var price = 1000
var totalSum = 0
if qty >= 5 && qty < 10 {
    price = 900
}else if qty >= 10 {
    price = 850
}
totalSum = qty * price
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
let userInputAge = "34"
//let convertStringToInt: Int = Int(userInputAge)!
if let convertStringToInt = Int(userInputAge) {
    print("String is convertable to int with the value: \(convertStringToInt)")
}else {
    print("unable to convert the String to int")
}
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
//method 1
let dayOfBirth = 1
let monthOfBirth = 5
let yearOfBirth = 1986
let currentDay = 29
let currentMonth = 7
let currentYear = 2020
let daysPerMonth = 30
let monthPerYear = 12
var totalYearsFromBirth = 0
var totalMonthFromBirth = 0
var totalDaysFromBirth = 0
totalYearsFromBirth = currentYear - yearOfBirth
totalMonthFromBirth = (totalYearsFromBirth * monthPerYear) + (currentDay - monthOfBirth)
totalDaysFromBirth = (totalMonthFromBirth * daysPerMonth) + (currentDay - dayOfBirth)
print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
//method 2
//set date and callendar settings
let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyy"
let calendar = Calendar.current
//setting up the dates
let currentDate = Date()
let myBirthDateString = "01.05.1986"
let myBirthDay = formatter.date(from: myBirthDateString) ?? Date()
//calculate
var totalYearsFromBirthTwo = calendar.dateComponents([.year], from: myBirthDay, to: currentDate).year
var totalMonthFromBirthTwo = calendar.dateComponents([.month], from: myBirthDay, to: currentDate).month
var totalDaysFromBirthTwo = calendar.dateComponents([.day], from: myBirthDay, to: currentDate).day
if totalYearsFromBirthTwo == 0 || totalMonthFromBirthTwo == 0 || totalDaysFromBirthTwo == 0 {
    print("unabale to check the total year, month, day due to wrong input")
}else{
    print("Total years: \(totalYearsFromBirthTwo!) , total months: \(totalMonthFromBirthTwo!), total days: \(totalDaysFromBirthTwo!)")
}
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
if let month = calendar.dateComponents([.month], from: myBirthDay).month {
    var quarter = 0
    switch month {
    case 1...3:
        quarter = 1
    case 4...6:
        quarter = 2
    case 7...9:
        quarter = 3
    case 10...12:
        quarter = 4
    default:
        quarter = 0
    }
    if quarter != 0 {
        print("I was born in the \(quarter) quarter!")
    }else{
        print("unable to check month of birth")
    }
}
