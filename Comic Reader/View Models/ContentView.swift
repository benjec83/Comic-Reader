//
//  ContentView.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: HomeView()) {
                    Label("Home", systemImage: "book")
                }
                NavigationLink(destination: SearchView()) {
                    Label("Search", systemImage: "magnifyingglass")
                }
                Section("Library", content: {
                    NavigationLink(destination: LibraryView(book: books[1], books: books)) {
                        Label("All Books", systemImage: "books.vertical")
                    }
                    Label("Reading Pile", systemImage: "square.stack.3d.up")
                    Label("Recently Added", systemImage: "clock")
                    Label("Favorites", systemImage: "star")
                    Label("Story Arcs", systemImage: "archivebox")
                    Label("Downloaded", systemImage: "arrow.down")
                })
                Section("Reading Lists", content: {
                    NavigationLink(destination: ReadingListsView()) {
                        Label("All Reading Lists", systemImage: "list.bullet.rectangle")
                    }
                    Label("User Reading List 1", systemImage: "list.bullet.rectangle.portrait")
                    Label("User Reading List 2", systemImage: "list.bullet.rectangle.portrait")
                    Label("User Reading List 3", systemImage: "list.bullet.rectangle.portrait")
                    Label("Add New List", systemImage: "doc.badge.plus")
                })
                Label("Settings", systemImage: "gear")
            }
            .listStyle(.sidebar)
            .navigationTitle("Menu")
            
            HomeView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //            .preferredColorScheme(.dark)
        
    }
}

