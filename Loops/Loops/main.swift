//
//  main.swift
//  Loops
//
//  Created by Ahmet Erkut on 28.09.2023.
//

import Foundation

/*
    In Swift, loops are control structures that allow you to execute a block of code repeatedly as long as a certain condition is
    true or for a specific number of iterations. Swift provides several types of loops, including the for-in loop, the while loop.
    Each type of loop serves a different purpose and can be used in various situations.
*/

// MARK: For-In Loop:
/// The for-in loop is commonly used to iterate over a sequence, such as an array, a range of numbers, or a collection. It provides a concise way to loop through elements one at a time.
/*
     for item in items {
        // Code to execute for each item
     }
*/

// let's try print 1,2,3
for i in 1...3 { // 1...3 is range, i is our variable you can set any name of it
    print("Loop 1: \(i)") // and we can use i to print
}

/// If we want a specific number to increase or decrease by a certain amount, we will need to use the 'stride' structure. When we specify the starting point, ending point, and the amount of increase or decrease, the for loop automatically does it for us.
// Numbers increasing by 5 between 10 and 20
for x in stride(from: 10, through: 20, by: 5) {
    print("Loop 2: \(x)")
}

// Numbers decreasing by 5 between 20 and 10
for n in stride(from: 20, through: 10, by: -5) {
    print("Loop 3: \(n)")
}

// MARK: While Loop:
/// The while loop repeatedly executes a block of code as long as a given condition is true. It's useful when you want to continue executing code until a specific condition is no longer met.
/*
    while condition {
        // Code to execute as long as the condition is true
    }
*/

// let's try print 1,2,3
var count = 1

while count < 4 { // when this condition is true
    print("Loop 4: \(count)") // this code run
    count += 1 // (count = count + 1) If we don't increment this variable here, the loop will run indefinitely.
}

// Numbers increasing by 5 between 10 and 20
var x = 10

while x < 21 {
    print("Loop 5: \(x)")
    x += 5
}

// Numbers decreasing by 5 between 20 and 10
var y = 20

while y > 9 {
    print("Loop 6: \(y)")
    y -= 5
}


// MARK: Break and Continue

// Break Statement:
/// The break statement is used to exit the current loop prematurely. When a break statement is encountered within a loop, the loop is immediately terminated, and program execution continues after the loop.
/// It's often used when you want to exit a loop early based on a certain condition.

for i in 1...5 {
    if i == 3 {
        break
    }
    print("Loop 7: \(i)")
}

// Continue Statement:
/// The continue statement is used to skip the current iteration of a loop and move on to the next iteration. When a continue statement is encountered, the code within the loop block following the continue is skipped, and the loop proceeds with the next iteration.
/// It's useful when you want to skip certain iterations of a loop based on a condition without exiting the loop entirely.

for i in 1...5 {
    if i == 3 {
        continue
    }
    print("Loop 8: \(i)")
}
