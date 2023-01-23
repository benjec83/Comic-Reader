//
//  Comic_ReaderApp.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import SwiftUI

@main
struct Comic_ReaderApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(focus: "List View", book: books[1], books: books)
                .environmentObject(modelData)
        }
    }
}
