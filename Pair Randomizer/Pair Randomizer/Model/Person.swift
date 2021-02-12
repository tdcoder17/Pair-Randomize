//
//  Person.swift
//  Pair Randomizer
//
//  Created by Theo Davis on 2/12/21.
//

import Foundation

class Person: Codable {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}//End of class

extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.firstName && lhs.lastName == rhs.firstName && rhs.lastName
    }
}//end of extension
