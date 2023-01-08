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
                NavigationLink(destination: HomeView(book: books[1], books: books)) {
                    Label("Home", systemImage: "book")
                }
                NavigationLink(destination: SearchView()) {
                    Label("Search", systemImage: "magnifyingglass")
                }
                Section("Library", content: {
                    NavigationLink(destination: LibraryView(book: books[1], books: books)) {
                        Label("All Books", systemImage: "books.vertical")
                    }
                    NavigationLink {Text("Reading Pile")} label: {
                        Label("Reading Pile", systemImage: "square.stack.3d.up")
                    }
                    NavigationLink {Text("Recently Added")} label: {
                        Label("Recently Added", systemImage: "clock")
                    }
                    NavigationLink {LibraryFavoritesView()} label: {
                        Label("Favorites", systemImage: "star")
                    }
                    NavigationLink {Text("Story Arcs")} label: {
                        Label("Story Arcs", systemImage: "archivebox")
                    }
                    NavigationLink {Text("Downloaded")} label: {
                        Label("Downloaded", systemImage: "square.and.arrow.down")
                    }
                })
                Section("Reading Lists", content: {
                    NavigationLink(destination: ReadingListsView()) {
                        Label("All Reading Lists", systemImage: "list.bullet.rectangle")
                    }
                    NavigationLink {Text("User Reading List 1")} label: {
                        Label("User Reading List 1", systemImage: "list.bullet.rectangle.portrait")
                    }
                    NavigationLink {Text("User Reading List 2")} label: {
                        Label("User Reading List 2", systemImage: "list.bullet.rectangle.portrait")
                    }
                    NavigationLink {Text("User Reading List 3")} label: {
                        Label("User Reading List 3", systemImage: "list.bullet.rectangle.portrait")
                    }
                    NavigationLink {Text("Add New List")} label: {
                        Label("Add New List", systemImage: "doc.badge.plus")
                    }
                })
                Spacer()
                NavigationLink {Text("Settings")} label: {
                    Label("Settings", systemImage: "gear")
                }
            }
            .listStyle(.automatic )
            .navigationTitle("Menu")
            
            HomeView(book: books[1], books: books)
        }
    }
}

//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//        //            .preferredColorScheme(.dark)
//        
//    }
//}

