//
//  main.swift
//  Animal
//
//  Created by matthew porter on 7/6/16.
//  Copyright © 2016 matthew porter. All rights reserved.
//

import Foundation

//First, create a class called Animal
//
//Give Animal a property "name"
//Give Animal a property "health" with a default value of 100
//Give Animal an initialization that takes in a name and sets the name property appropriately
//Give the animal a displayHealth method
//Next, create a subclass of Animal called Cat
//
//Give the Cat a method "growl" that prints to the screen "Rawr!"
//Modify the Cat's health to be 150
//Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health
//Next, create two subclasses of Cat - Cheetah and Lion
//
//Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle"
//Override Lion's health to be 200
//Override the Cheetah's run method to print "Running Fast" and deduct 50 health
//Add a sleep function to the Cheetah class that adds 50 health (make sure that the Cheetah's health limit remains 200)
//Create a Cheetah. Have the Cheetah run 4 times. Display the Cheetah's health. Now modify the Cat's run method so that it cannot run if it does not have the required health.
//
//Create a Lion. Have the Lion run 3 times. Have the Lion growl.

class Animal
{
    var name: String = ""
    var health: Int = 100
    func displayHealth()-> Animal
    {
        print(health)
        return self
    }
    init(name: String){
        self.name = name
    
    }
    
}

class Cat: Animal
{
    override init(name: String)
    {
        super.init(name: name)
        self.health = 150
    }
    func growl() -> Cat
    {
        print("Rawr!")
        return self
    }
    func run() -> Cat{
        if health < 50{
            print("Too tired to run")
        }else{
            print("Running")
            health -= 10
        }
        return self
    }
}

class Lion: Cat
{
    override init(name: String)
    {
        super.init(name: name)
        self.health = 200
    }
    override func growl() -> Lion
    {
        print("ROAR!!! I am the King of the Jungle")
        return self
    }
}

class Cheetah: Cat
{
    override init(name: String)
    {
        super.init(name: name)
        super.health = 200
        if super.health > 200{
            super.health = 200
        }
    }
    override func run() -> Cheetah
    {
        if health < 50{
            print("Too tired to run")
            return self
        }else{
        print("Running Fast")
        health -= 50
        return self
        }
    }
    func sleep() -> Cheetah
    {
        health += 50
        return self
    }
}

let cheetah = Cheetah(name: "Porter")
let lion = Lion(name: "Simba")
cheetah.run().run().run().run().run().displayHealth()
lion.run().run().run().growl()








