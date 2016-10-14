//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    //var favoriteFlavorsOfIceCream = [String: String]()
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names = [String]()
        for (name, faveFlavor) in favoriteFlavorsOfIceCream {
            if faveFlavor == flavor {
                names.append(name)
            }
        }
        return names
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var counter = 0
        for faveFlavor in favoriteFlavorsOfIceCream.values {
            if faveFlavor == flavor {
                counter += 1
            }
        }
        return counter
    }
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            return false
        }
        favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
        return true
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        let wasAttending = favoriteFlavorsOfIceCream.removeValue(forKey: person)
        
        return wasAttending != nil
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        let oldFlavor = favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
        return oldFlavor == nil
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        var finalString = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for (index, name) in allNames.enumerated() {
            if index == allNames.count - 1 {
                finalString.append("\(name) likes \(favoriteFlavorsOfIceCream[name]!)")
            } else {
                finalString.append("\(name) likes \(favoriteFlavorsOfIceCream[name]!)\n")
            }
        }
        return finalString
    }
    
    
    
    
    
    
    
    
}
