import Foundation

/*
Exercise 1
Declare myTeam as Girls.
Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
*/
let myTeam  = "Girls"
func resultsOfGames(name: String, result: String) {
    print("\(myTeam) against \(name) scored \(result)")
}

resultsOfGames(name: "Brooklyn Nets", result: "98:100")
resultsOfGames(name: "Brooklyn Nets", result: "97:95")
resultsOfGames(name: "Dallas Mavericks", result: "87:93")
resultsOfGames(name: "Dallas Mavericks", result: "107:87")
resultsOfGames(name: "Washington Wizards", result: "108:102")
resultsOfGames(name: "Washington Wizards", result: "86:103")

/*
Exercise 2
Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
Create a func to calculateCash sum of your cash inside your wallet.
Run the func.
*/

let arrayOfInt = [5,10,20,50,100,500]
func calculateCash(_ arra: [Int]) -> Int {
    return arra.reduce(0, +)
}
print("In my wallet \(calculateCash(arrayOfInt)) EUR")

//or
let sum = arrayOfInt.reduce(0, +)
print("In my wallet \(sum) EUR")

/*
Exercise 3
Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
Run the func.
*/

var evens = [Int]()
func isEvenNumber(number: Int) -> Bool {
  return number % 2 == 0
}
evens = Array(1...10).filter(isEvenNumber)
print(evens)


/*
Exercise 4
Create a func createArray to calculate some number from start: to end: than return Int array.
Declare array and put createArray(from: 1, to: 100)
print(array)
*/

var createArray = Array(0...100)
print(createArray)



/*
Exercise 5
Create for loop.
Use array result from Exercise 4.
Use isEvenNumber from Exercise 3.
Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
It should be 1/2 of createArray and started from [1,3,5.....
*/

// revision
//homeWork based on Lesson6
/*
 Exercise 1
 Declare myTeam as Girls.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
let myteam = "Girls Team"
let resultsOfGames = [
    "Brooklyn Nets"     : ["99:89", "109:99"],
    "Dallas Mavericks"  : ["99:89", "109:99"],
    "Washington Wizards": ["117:112","07:122"]
]
for (teamName, results) in resultsOfGames{
    for index in 0..<results.count {
        //        print(results.count )
        //        print("\n\(myteam) Vs \(teamName) scored - \(results[index])")
    }
}
for (teamName, results) in resultsOfGames{
    for result in results{
        //print("\(myteam) Vs \(teamName) scored - \(result)")
    }
}
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */
var wallet = [5, 10, 20, 50, 100, 200, 500]
func calculateCash(_ wallet: [Int]) -> Int {
    var totalCash = 0
    for bankNote in wallet {
        totalCash += bankNote
    }
    return totalCash
}
print("Total amount of cash in my wallet is \(calculateCash(wallet))")
calculateCash(wallet)
/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
let number = 24
func isEvenNumber(_ number: Int) -> Bool {
    return number % 2 == 0
}
print("\nprovided number \(number) is even: \(isEvenNumber(number))")
isEvenNumber(19)
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
func createArray(from start: Int, to end: Int) -> [Int] {
    var array = [Int]()
    for count in start...end {
        array.append(count)
    }
    return array
}
var array = createArray(from: 1, to: 100)
/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
//1
for number in array {
    if isEvenNumber(number){
        if let index = array.firstIndex(of: number){
            array.remove(at: index)
        }
    }
}
print(array)
//2
let arrayOfInts = array
for i in 0..<arrayOfInts.count{
    switch isEvenNumber(arrayOfInts[i]) {
    case true:
        if let index = array.firstIndex(of: number){
            array.remove(at: index)
        }
    default:
        break
    }
}
//3
let resultFilter = array.filter({$0 % 2 != 0})
print("resultFilter:", resultFilter)
//4
array.removeAll(where: isEvenNumber)
print("isEvenNumber bool:", array)
