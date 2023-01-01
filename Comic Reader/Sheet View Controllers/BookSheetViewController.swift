//
//  BookSheetViewController.swift.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI

struct BookSheetViewController: View {
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
                    NavigationView {
                        BookSheetView(book: book)
                    }
                }
        }
    }
    
}

struct BookSheetViewController_Previews: PreviewProvider {
    static var previews: some View {
        BookSheetViewController(book: books[1])
    }
}
