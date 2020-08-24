import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */

/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
    var result = numberOne
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
 */
/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/
enum CalculationType: String {
    case addition = "addition"
    case subtraction = "subtraction"
    case multiplication = "multiplication"
    case division = "division"
}

func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int {
    
    var result = numberOne
    
    switch calculationType {
    case .addition: result += numberTwo
    case .subtraction: result -= numberTwo
    case .multiplication: result *= numberTwo
    case .division: result /= numberTwo
    }
    
    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    
    return result
}

print(calculateResult(firstNumber: 8, andSecondNumber: 2, withCalculationType: .addition))
print(calculateResult(firstNumber: 8, andSecondNumber: 2, withCalculationType: .subtraction))
print(calculateResult(firstNumber: 8, andSecondNumber: 2, withCalculationType: .multiplication))
print(calculateResult(firstNumber: 8, andSecondNumber: 2, withCalculationType: .division))

/*
Exercise 2
Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int
 Create func getSpecs() print it with elements provided above
 */
/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
Than run getSpecs() for audiQ7 and audiTT
 */

struct Car{
    var name: String
    var productionYear: Int
    var horsPower: Int
    func getSpecs(){
        print("Model: \(name), produced in: \(productionYear)year and with horse power \(horsPower)")
    }
}

let audiQ7 = Car(name: "AUDI Q7", productionYear: 2010, horsPower: 288)
var audiTT = audiQ7
audiTT.name = "AUDI TT"
audiTT.horsPower = 280
audiQ7.getSpecs()
audiTT.getSpecs()






