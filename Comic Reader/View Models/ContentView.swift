//
//  ContentView.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var modelData: ModelData

    
    var focus: String
    
    let book: Book
    let books: [Book]
        
    
    var body: some View {
        NavigationView {
            List {
                
                NavigationLink(destination: HomeView(recentlyAdded: books)) {
                    Label("Home", systemImage: "book")
                }
                NavigationLink(destination: SearchView()) {
                    Label("Search", systemImage: "magnifyingglass")
                }
                Section("Library", content: {
                    NavigationLink {
                        LibraryView(focus: "Library", book: books[0], books: books)
                    } label: {
                        Label("All Books", systemImage: "books.vertical")
                    }
                    NavigationLink {
                        CollectionListView(focus: "List View", book: books[0], books: books)
                    } label: {
                        Label("List View", systemImage: "list.bullet")
                    }
                    NavigationLink {
                        LibraryView(focus: "Reading Pile", book: books[0], books: books)
                    } label: {
                        Label("Reading Pile", systemImage: "square.stack.3d.up")
                    }
                    NavigationLink {
                        LibraryView(focus: "Recently Added", book: books[0], books: books)
                    } label: {
                        Label("Recently Added", systemImage: "clock")
                    }
                    NavigationLink {
                        LibraryView(focus: "Favorites", book: books[0], books: books)
                    } label: {
                        Label("Favorites", systemImage: "star")
                    }
                    NavigationLink {
                        LibraryView(focus: "Downloaded", book: books[0], books: books)
                    } label: {
                        Label("Downloaded", systemImage: "square.and.arrow.down")
                    }
                    NavigationLink {
                        LibraryView(focus: "Story Arcs", book: books[0], books: books)
                    } label: {
                        Label("Story Arcs", systemImage: "square.fill.text.grid.1x2")
                    }
                    NavigationLink {
                        LibraryView(focus: "Events", book: books[0], books: books)
                    } label: {
                        Label("Events", systemImage: "text.badge.star")
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
            .listStyle(.sidebar )
            .navigationTitle("Menu")
            
            HomeView(recentlyAdded: books)
        }
        

        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(focus: "Focus", book: books[0], books: books)
            .environmentObject(ModelData())
        //            .preferredColorScheme(.dark)

    }
}

