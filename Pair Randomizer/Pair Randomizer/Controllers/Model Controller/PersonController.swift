//
//  PersonController.swift
//  Pair Randomizer
//
//  Created by Theo Davis on 2/12/21.
//

import Foundation

class PersonController {
    static let shared = PersonController()
    var persons: [Person] = []
    
    //MARK: - Persistence
    
    //fileURL
    func fileURL() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileURL = urls[0].appendingPathComponent("Person.json")
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
    
    //load
    func loadFromPersistanceStore() {
        do {
            let data = try Data(contentsOf: fileURL())
            let newPerson = try JSONDecoder().decode([Person].self, from: data)
            self.persons = newPerson
        } catch {
            print(error)
            print(error.localizedDescription)
        }
    }
}//End of class
