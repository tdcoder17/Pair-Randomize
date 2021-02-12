//
//  GroupController.swift
//  Pair Randomizer
//
//  Created by Theo Davis on 2/12/21.
//

import Foundation

class GroupController {
    static let shared = GroupController()
    var persons: [Person] = []
    
    func createPerson(firstName: String, lastName: String) {
        let newPerson = (firstName: firstName, lastName: lastName)
        saveToPersistenceStore()
    }
    
    func deletePerson(person: Person) {
        guard let index = persons.firstIndex(of: person) else { return }
        persons.remove(at: index)
        saveToPersistenceStore()
    }
    
    func addPersonTo(person: Person, group: Group) {
        persons.append(group)
        saveToPersistenceStore()
    }
    
    //MARK: - Persistence
    
    //fileURL
    func fileURL() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileURL = urls[0].appendingPathComponent("Group.json")
        return fileURL
    }
    
    //save
    func saveToPersistenceStore() {
        do {
            let data = try JSONEncoder().encode(persons)
            try data.write(to: fileURL())
        } catch {
            print(error)
            print(error.localizedDescription)
        }
    }
}// End of class
