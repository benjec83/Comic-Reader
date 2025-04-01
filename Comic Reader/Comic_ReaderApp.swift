//
//  Comic_ReaderApp.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import SwiftUI

@main
struct Comic_ReaderApp: App {
    @StateObject private var manager: DataManager = DataManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView(focus: "List View", book: bookitems[0], books: books)
                .environmentObject(manager)
                .environmentObject(\.managedObjectContext, manager.container.viewContext)
        }
    }
}
