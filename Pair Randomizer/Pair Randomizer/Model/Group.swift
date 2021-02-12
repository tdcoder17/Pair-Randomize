//
//  Group.swift
//  Pair Randomizer
//
//  Created by Theo Davis on 2/12/21.
//

import Foundation

class Group: Codable {
    let title: String
    let newPerson: [Person]
    
    init(title: String, newPerson: [Person] = []) {
        self.title = title
        self.newPerson = newPerson
    }
}//End of class
