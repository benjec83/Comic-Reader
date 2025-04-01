//
//  DataManager.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import Foundation
import CoreData

//Main data manager to handle the book items
class DataManager: NSObject, ObservableObject {
    //Dynamic properties that the UI will react to
    @Published var bookItems: [BookItem] = [BookItem]()
    
    //Add the Core Data container with the model name
    let container: NSPersistentContainer = NSPersistentContainer(name: "Book")
    
    //Default init method. Load the Core Data container
    override init() {
        super.init()
        container.loadPersistentStores { _, _ in}
    }
    
    
}

//var books: [Book] = load("libraryData.json")
//
//func load<T: Decodable>(_ filename: String) -> T {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//    else {
//        fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }
//}
