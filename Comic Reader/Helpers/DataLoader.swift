//
//  DataLoader.swift
//  Comic Reader
//
//  Created by Benjamin Carney on 1/13/23.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var books: [Book] = load("libraryData.json")
}

public class DataLoader {
    
    @Published var library = [Book]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "libraryData", withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([Book].self, from: data)
                
                self.library = dataFromJson
            } catch {
                print(error)
            }
            
        }
        
    }
    
    func sort() {
        self.library = self.library.sorted(by: { $0.issue < $1.issue })
    }
    
    func favorite() {
        self.library = try self.library.filter({ $0.favorite == true ?? false })
    }
    
}
