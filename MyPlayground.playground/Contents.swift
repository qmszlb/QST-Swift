
//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let me = 12
print(me)
print(str)
print(me , str)
let a :Float = 4.1
let b = a + Float(me)
print(b)


let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(appleSummary)
print(fruitSummary)


var shoppingList = ["catfish","water","tulips","blue paint",]
shoppingList[1] = "bottle of water"


var occupations = [
    
    "Malcolm":"Captain",
    "Keylee":"Mechanic",
    
]
occupations["Jayne"] = "Public Relations"
print(shoppingList)
print (occupations)

let emptyArray = [String]()
let emptyDictionary = [String :Float]()




let individualScores = [75,42,103,87,12]
var teamScore = 59
for score in individualScores{
    if score > 50 {
        teamScore += 3
    }else{
        teamScore += 1
    }
    
}
print(teamScore)

let vegetable = "Spapper"
switch vegetable{
case "celery":
    print("Add some raisins and make ants on a log")
case "cucumber","watercress":
    print("That would make a good tea sndwitch.")
    
    //case let x where x.hasSuffix("papper"):// X代表vegetables表示的值 后缀
    //    print("Is it a spicy \(x)?")
    
case let x where x.hasPrefix("SB")://前缀
    print("Are you OK ?")
default:
    print("Everything tastes good in soup.")
    
}

let interestingNumbers = [
    
    "Prime":[2,3,5,7,9,11,93,],
    "Fibonacci":[1,1,2,3,5,78],
    "Square":[1,4,9,16,25],
    "wegu":[23,34,45,999]
    
]
var largest = 0
var type :String!
for (kind,numbers) in interestingNumbers{
    print(kind)
    print(numbers)
    for number in numbers{
        if number>largest{
            largest = number
            type = kind
        }
    }
}
print(type,largest)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat{
 m *= 2

}
    while m < 100
print(m)

var total = 0
for i in 0...100 {
total  += i
}
print(total)

func greet(person: String,day: String) ->String{
return "Hello \(person),today is \(day)."

}
 greet(person: "Bob", day: "Tuesday")

func calculateStatistics(scores:[Int])->(min:Int,max:Int,sum:Int){
var min = scores[0]
var max = scores[0]
var sum = 0
    
    for score in scores{
        if score > max {
            max = score
        }else if score < min {
        min = score
    }
    sum += score
}
  return (min,max,sum)
}
let statistics = calculateStatistics(scores: [5,3,100,3,9])
print(statistics.sum)
print(statistics.0)




func returnFifteen()-> Int{

var y = 10
    
    
    func  add(){
    
    y += 5
}

add()
return y
}
returnFifteen()



func makeIncrementer()->((Int)->Int){
    func addOne(number:Int)->Int{
    return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list:[Int],condition:(Int)-> Bool) ->Bool{
    for item in list {
        if condition(item){
        return true
        }
    }
    return false
}
func lessThanTen(number:Int) ->Bool{

return number < 10
}
var numbers = [20,19,7,12]

hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({
    (number:Int) -> Int in
    let result = 3 * number
    return result
})

for index in 1...3{
    print("\(index) * \(index) = \(index * index)")
}

let names = ["Anna","Alex","Brian","Jack"]
//let cout = names.count
for i in 0..<names.count {
    print("第\(i + 1)个人叫 \(names[i])")
}


let allowedEntry = true
if !allowedEntry{
    print("12")}//此时不执行


let sb = ["xumkjp,vhww"]

print("this has \(sb.count) 12")


var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert("S", at: welcome.startIndex)
print(welcome)



		
