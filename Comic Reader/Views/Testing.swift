//
//  Testing.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/30/22.
//

import SwiftUI

struct Testing: View {
    @State private var showingSheet = false
    
    let book: Book
    
    let spacing: CGFloat = 10
    @State private var numberofRows = 3
    
    var body: some View {
        
        let columns = Array(
            repeating: GridItem(.flexible(),
                                spacing: spacing),
            count: numberofRows)
        ScrollView {
            
            
            LazyVGrid(columns: columns, spacing: spacing) {
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

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Testing(book: books[1])
    }
    

}
