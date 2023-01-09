//
//  LibraryView.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI
import Foundation

struct LibraryView: View {
    @Environment(\.isSearching) var isSearching
    
    @State var focus: String
    
    var library = ComicLibrary()
    
    var SearchType: String {
        switch(focus) {
        case "Favorites":
            return "favorite"
        case "Recently Added":
            return "read"
        default:
            return ""
        }
    }
    
    @State private var showingSheet = false
    @State var searchQuery = ""
    var filteredBooks: [Book] {
        if searchQuery.isEmpty {
            return library.library
        } else {
            return library.library.filter {
                $0.series.localizedCaseInsensitiveContains(searchQuery)
            }
        }
    }
    
    let book: Book
    let books: [Book]
    
    @State private var selected: Book? = nil
    
    let spacing: CGFloat = 10
    
    var gridItems: [GridItem] {
        [GridItem(.adaptive(minimum: 180, maximum: 180))]
    }
    
    
    
    var body: some View {
        Text("")
            .multilineTextAlignment(.leading)
            .navigationTitle("\(focus)")
        
        
        ScrollView(.vertical) {
            
            LazyVGrid(columns: gridItems,
                      spacing: spacing
            )
            
            { ForEach(filteredBooks) { item in
                
                Button {
                    selected = item
                } label: {
                    BookTileModel(book: item)
                }
                
                //                                NavigationLink(destination: BookSheetView(book:book),
                //                                               label: {BookTileModel(book: book)})
                
            }
            .onDrag { // mean drag a row container
                return NSItemProvider()
            }

            }
            //        .onDelete(perform: deleteItem)
//            .onMove(perform: move)
            .searchable(text: $searchQuery, placement: .navigationBarDrawer, prompt: "Search")
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
//        func move(from source: IndexSet, to destination: Int) {
//            item.move(fromOffsets: source, toOffset: destination )
//        }
    }
    
}
