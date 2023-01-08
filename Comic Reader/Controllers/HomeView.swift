//
//  HomeView.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.isSearching) var isSearching
    
    var library = ComicLibrary()
    
    
    
    let book: Book
    let books: [Book]
    
    @State private var selected: Book? = nil
    
    let spacing: CGFloat = 10
    
    //    var gridItems: [GridItem] {
    //        [GridItem(.adaptive(minimum: 180, maximum: 180))]
    //    }
    let rows = [
        GridItem(.fixed(1))]
    
    var body: some View {
        Text("")
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
        
        ScrollView {
            Spacer()
            
            VStack {
                HStack {
                    Text("Currently Reading")
                    Spacer()
                    Button{
                        print("Currently Reading More pressed")
                    } label: {
                        Label("", systemImage: "chevron.right")
                    }
                }
                ScrollView(.horizontal) {
                    
                    LazyHGrid(rows: rows) {
                        ForEach(books) { item in
                            
                            Button {
                                selected = item
                            } label: {
                                BookTileModel(book: item)
                            }
                            
                            //                                NavigationLink(destination: BookSheetView(book:book),
                            //                                               label: {BookTileModel(book: book)})
                            
                        }
                    }
                    //  Start of sheet
                    .sheet(item: $selected) { item in
                        NavigationView {
                            VStack {
                                BookSheetView(book: item)
                            }
                        }
                    }
                    // End of sheet
                }
            }
            
            VStack {
                HStack {
                    Text("Recently Added")
                    Spacer()
                    Button{
                        print("Recently Added More pressed")
                    } label: {
                        Label("", systemImage: "chevron.right")
                    }
                }
                ScrollView(.horizontal) {
                    
                    LazyHGrid(rows: rows) {
                        ForEach(books) { item in
                            
                            Button {
                                selected = item
                            } label: {
                                BookTileModel(book: item)
                            }
                            
                            //                                NavigationLink(destination: BookSheetView(book:book),
                            //                                               label: {BookTileModel(book: book)})
                            
                        }
                    }
                    //  Start of sheet
                    .sheet(item: $selected) { item in
                        NavigationView {
                            VStack {
                                BookSheetView(book: item)
                            }
                        }
                    }
                    // End of sheet
                }
            }
            VStack {
                HStack {
                    Text("Favorites")
                    Spacer()
                    Button{
                        print("Favorites More pressed")
                    } label: {
                        Label("", systemImage: "chevron.right")
                    }
                }
                ScrollView(.horizontal) {
                    
                    LazyHGrid(rows: rows) {
                        ForEach(books) { item in
                            
                            Button {
                                selected = item
                            } label: {
                                BookTileModel(book: item)
                            }
                        }
                    }
                    //  Start of sheet
                    .sheet(item: $selected) { item in
                        NavigationView {
                            VStack {
                                BookSheetView(book: item)
                            }
                        }
                    }
                    // End of sheet
                }
            }
            VStack {
                HStack {
                    Text("Reading Lists")
                    Spacer()
                    Button{
                        print("Readling Lists More pressed")
                    } label: {
                        Label("", systemImage: "chevron.right")
                    }
                }
                ScrollView(.horizontal) {
                    
                    LazyHGrid(rows: rows) {
                        ForEach(books) { item in
                            
                            Button {
                                selected = item
                            } label: {
                                BookTileModel(book: item)
                            }
                          }
                    }
                    //  Start of sheet
                    .sheet(item: $selected) { item in
                        NavigationView {
                            VStack {
                                BookSheetView(book: item)
                            }
                        }
                    }
                    // End of sheet
                }
            }
        }
        .padding(.horizontal, 20.0)
        
    }
}
