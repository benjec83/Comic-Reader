//
//  ListView.swift
//  Comic Reader
//
//  Created by Benjamin Carney on 1/9/23.
//

import SwiftUI

struct ListView: View {
    
    @Environment(\.isSearching) var isSearching
    
    @State var focus: String
    
    var library = ComicLibrary()
    
    //    var SearchType: String {
    //        switch(focus) {
    //        case "Favorites":
    //            return "favorite"
    //        case "Recently Added":
    //            return "read"
    //        default:
    //            return ""
    //        }
    //    }
    
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
        
        VStack {
            //            NavigationStack {
            List {
                ForEach(filteredBooks) { item in
                    HStack {
                        Button {
                            selected = item
                        } label: {
                            BookRow(book: item)
                        }
                        .foregroundColor(.secondary)

                    }
                    .onDrag {
                        return NSItemProvider()
                    }
                }
                .onMove(perform: move)
                
            }
            .listStyle(.inset )
            .searchable(text: $searchQuery, placement: .navigationBarDrawer, prompt: "Search")
            //  Start of sheet
            .sheet(item: $selected) { item in
                NavigationStack {
                    VStack {
                        BookSheetView(book: item)
                    }
                }
            }
        }
    }
}
    
    func move(from source: IndexSet, to destination: Int) {
        books.move(fromOffsets: source, toOffset: destination )
        print(books.startIndex)
        print(books.endIndex)
    }
