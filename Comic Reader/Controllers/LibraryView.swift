//
//  LibraryView.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI

struct LibraryView: View {
    @State private var showingSheet = false
    
    let book: Book
    
    let spacing: CGFloat = 10
    @State private var numberofRows = 5
    
    var gridItems: [GridItem] {
        [GridItem(.adaptive(minimum: 180, maximum: 180))]
    }
    
    var body: some View {
        
        let columns = Array(
            repeating: GridItem(.flexible(),
                                spacing: spacing),
            count: numberofRows)
        ScrollView {
            
            
            LazyVGrid(columns: gridItems, spacing: spacing) {
                ForEach(books) { book in
                    Button(action: {
                        showingSheet = true
                    }) {
                        BookTileViewModel(book: book)
                    }
                }
            }
            .sheet(isPresented: $showingSheet) {
                NavigationView {
                    BookSheetView(book: book)
                    
                }
                
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView(book: books[1])
    }
}
