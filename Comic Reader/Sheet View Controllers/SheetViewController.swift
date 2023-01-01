//
//  SheetViewController.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI

struct SheetViewController: View {
    var book: Book
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView {
            BookList()
                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        Button {
                            showingSheet = true
                        } label: {
                            Label("House", systemImage: "house")
                        }
                    }
                    
                }
 
                .sheet(isPresented: $showingSheet) {
                    BookSheetView(book: book)
                }
        }
    }
    
}

struct SheetViewController_Previews: PreviewProvider {
    static var previews: some View {
        SheetViewController(book: books[1])
    }
}
