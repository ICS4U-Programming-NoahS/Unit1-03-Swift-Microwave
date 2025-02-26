//
// Microwave.swift
//
// Created by Noah Smith
// Created on 2025-02-17
// Version 1.0
// Copyright (c) 2025 Noah Smith. All rights reserved.
//
// The Microwave program asks the user which item they want to eat,
// and how many (max 3 and they must all be the same items).
// It then calculates and displays the time it takes to heat each item,
// given the quantity specified by the user.

// Import foundation library
import Foundation

// Declare constants, in seconds
let pizzaTime = 45
let subTime = 60
let soupTime = 105

// Define the different possible error types
enum InputError: Error {
    case invalidInput
}

// Greet the user
print("Welcome to the Microwave program!")

// Loop until user input is valid
repeat {

    // Ask the user to enter their food item
    print("What would you like to heat up for lunch? ")
    print("Enter 'pizza', 'sub', or 'soup': ")

    // get food item choice as a string
    let userItem = readLine()

    if (userItem == "pizza") || (userItem == "sub") || (userItem == "soup") {
        // Loop to give user another chance to enter a valid number
        repeat {
            // Ask the user for the number of items they want to heat up
            print("How many items do you want to heat up? (Max 3 items.)")

            do {
                // typecast the item number from a string into a double, if possible
                if let numItemString = readLine(), let numItem = Double(numItemString) {
                    // Check the number of items to make sure it is valid
                    if numItem <= 3 && numItem > 0 {
                        // If the user chooses pizza
                        if userItem == "pizza" {
                            // Calculate the time it takes to heat up user's pizza(s)
                            let timePizza = (Double(pizzaTime) * (Double(numItem) - 1) * 0.5) + Double(pizzaTime)

                            // Convert the time it takes to heat up pizza
                            // from seconds to minutes and seconds
                            let minutes: Int = Int(timePizza / 60.0)
                            let seconds: Double = timePizza - 60.0 * Double(minutes)

                            // Display the time it takes to heat up user's pizza(s)
                            print(
                                "It will take \(minutes)
                                minutes and \(String(format: "%.2f", seconds))
                                seconds to heat up \(numItem) pizza(s)."
                                )

                        // If the user chooses sub
                        } else if userItem == "sub" {

                            // Calculate the time it takes to heat up user's sub(s)
                            let timeSub = (Double(subTime) * (Double(numItem) - 1) * 0.5) + Double(subTime)

                            // Convert the time it takes to heat up subs
                            // from seconds to minutes and seconds
                            let minutes: Int = Int(timeSub / 60.0)
                            let seconds: Double = timeSub - 60.0 * Double(minutes)

                            // Display the time it takes to heat up user's sub(s)
                            print(
                                "It will take \(minutes)
                                minutes and \(String(format: "%.2f", seconds))
                                seconds to heat up \(numItem) pizza(s)."
                                )

                        // If the user chooses soup
                        } else {
                            // Calculate the time it takes to heat up user's soup(s)
                            let timeSoup = (Double(soupTime) * (Double(numItem) - 1) * 0.5) + Double(soupTime)

                            // Convert the time it takes to heat up soup
                            // from seconds to minutes and seconds
                            let minutes: Int = Int(timeSoup / 60.0)
                            let seconds: Double = timeSoup - 60.0 * Double(minutes)

                            // Display the time it takes to heat up user's soup(s)
                            print(
                                "It will take \(minutes)
                                minutes and \(String(format: "%.2f", seconds))
                                seconds to heat up \(numItem) pizza(s)."
                                )
                        }

                        // Break from numItem loop
                        break

                    // If the user enters an invalid number of items
                    } else {
                        print("You must choose a positive number less than or equal to 3. Try again.")
                    }
                } else {
                    // Catches the invalid input
                    throw InputError.invalidInput
                }

            } catch InputError.invalidInput {
                // If user does not enter a number
                print("Please enter a number.")
            }
        }
        // Keep looping while the input is still invalid
        while (true)

        // Break from the userItem loop
        break

    // If the user enters an invalid food item
    } else {
        print("Item must be 'pizza', 'sub', or 'soup'. Try again.")
    }
}
// Keep looping while the input is still invalid
while (true)
