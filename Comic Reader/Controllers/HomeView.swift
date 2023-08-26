//
//  HomeView.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI
import UIKit

struct HomeView: View {
    
    @EnvironmentObject var manager: DataManager
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: []) private var bookItems: FetchedResults<Book>
    
    @Environment(\.isSearching) var isSearching
    
    var library = ComicLibrary()
    
    
    
//    let book: Book
//    let books: [Book]
    
    
    var currentlyReading: [Book] {
        books.sorted(by: { $0.series < $1.series })
//        books.filter { book in
//            book.read ?? 0 >= 1
//        }
    }

    var recentlyAdded: [Book]
    
    var favorites: [Book] {
        books.filter { book in
            (book.favorite )
        }
    }
    
    
    
    //    var filteredBooks: [Book] {
    //        if searchQuery.isEmpty {
    //            return library.library
    //        } else {
    //            return library.library.filter {
    //                $0.series.localizedCaseInsensitiveContains(searchQuery)
    //            }
    //        }
    //    }
    
    
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
                        Label("View all", systemImage: "chevron.right")
                    }
                }
                ScrollView(.horizontal) {
                    
                    LazyHGrid(rows: rows) {
                        ForEach(currentlyReading) { item in
                            
                            Button {
                                selected = item
                            } label: {
                                BookTileModel(book: item)
                            }
                        }
                    }
                    //  Start of sheet
                    .sheet(item: $selected) { item in
                        NavigationStack {
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
                        Label("View all", systemImage: "chevron.right")
                    }
                }
                ScrollView(.horizontal) {
                    
                    LazyHGrid(rows: rows) {
                        ForEach(recentlyAdded) { item in
                            
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
                        NavigationStack {
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
                        Label("View all", systemImage: "chevron.right")
                    }
                }
                ScrollView(.horizontal) {
                    
                    LazyHGrid(rows: rows) {
                        ForEach(favorites) { item in
                            
                            Button {
                                selected = item
                            } label: {
                                BookTileModel(book: item)
                            }
                        }
                    }
                    //  Start of sheet
                    .sheet(item: $selected) { item in
                        NavigationStack {
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
                        NavigationStack {
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

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}

