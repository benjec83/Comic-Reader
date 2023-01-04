//
//  LibraryView.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI

struct LibraryView: View {
    @Environment(\.isSearching) var isSearching

    var library = ComicLibrary()
    
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
        Text("Content")
            .multilineTextAlignment(.leading)
            .navigationTitle("Library")
        
        ScrollView {

            LazyVGrid(columns: gridItems,
                      spacing: spacing
            )
            { ForEach(filteredBooks, id: \.self) { item in
                
                Button {
                    selected = item
                } label: {
                    BookTileModel(book: item)
                }
                
//                                NavigationLink(destination: BookSheetView(book:book),
//                                               label: {BookTileModel(book: book)})
                
            }
            }
            .searchable(text: $searchQuery, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search by Series")


        }
        //  Start of sheet
        .sheet(item: $selected) { item in
            BookSheetView(book: item)
        }
        // End of sheet
    }
    
}

struct LibraryView_Previews: PreviewProvider {
    static var library = ComicLibrary().library
    
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iphone 14 Pro Max")
            
            ContentView()
                .previewDevice("ipad Pro (12.9-inch)")
        }    }
}
