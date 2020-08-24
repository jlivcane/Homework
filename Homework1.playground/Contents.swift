/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learning" and "swift". Print the phrase "I'm learning swift !!!" using these string constants.
*/

let firstString = "I'm learning"
let secondString = "swift"
let combineStrings = firstString + " " + secondString + " !!!"
print(combineStrings)
//or
print("\(firstString) \(secondString) !!!")

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/

let myAge = 33

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/

var myAgeInTenYears = Double(myAge) + 10

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/

let daysInYear = 365.25

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/

var daysPassed = myAgeInTenYears * daysInYear

/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. In 10 years, I will be <...> years old. From the moment of my birth day have passed <...>" . (Symbols (<...>) must be replaced with variable values !)
*/

print("My age is \(myAge). In 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed \(daysPassed).")

/*
Exercise 3.
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/

import Foundation
let acSide:Double = 8.0
let cbSide:Double = 6.0
let hypotenuse = sqrt(pow(acSide,2) + pow(cbSide,2))
let perimeter:Double = acSide + cbSide + hypotenuse
let area = (Double)(acSide * cbSide) / 2.0

print("triangle's area = \(area)")
print("perimeter = \(perimeter)")



