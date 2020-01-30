// C323 Mobile App Development - Mitja Hmeljak Spring 2020
//
//  examples in the Swift programming language
//
//  Note: the following Swift code will run correctly
//        from swift command-line
//

import Foundation     // for random numbers with arc4random_uniform()

var iter = 0

var answer = 0

// method returning a positive integer, within bounds:
//
func randRange (aMin: UInt32 , aMax: UInt32) -> UInt32 {
    return aMin + arc4random_uniform(aMax - aMin + 1)
}

self.answer = randRange(aMin: 0, aMax: 10)

func checkAnswer (userInput: UInt32) -> Bool {
	
	if(self.answer == userInput) {
		
		print("You guessed right in \(iter)")
		
		return false
	}
	
	return true
	
}



// example for getting user input from command-line,
//    using the readLine() method, which exists from Swift 2 onward:

var exit = false

while(exit) {
	print("At iteration \(self.iter) of the for loop. Please enter an integer:")
    var myText = readLine()!
    var integ = Int(myText)
	exit = checkAnswer(integ)
}




// example defining a dictionary in Swift:
//

var myDictionary = [0: true,
                    false: "hello",
                    "three": "four"] as [AnyHashable : Any]

print (myDictionary.description)
