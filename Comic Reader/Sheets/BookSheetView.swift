//
//  BookSheetView.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI

struct BookSheetView: View {
    @State private var showingSheet = false

    @State var isModalSheetShown: Bool = false

    var book: Book
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        TabView {
            BookDetailsMainView(book: book)
                .tabItem {
                    Image(systemName: "eye.fill")
                    Text("Overview")
                }
            BookDetailsCreativesView(book: book)
                .tabItem {
                    Image(systemName: "photo.artframe")
                    Text("Creative Team")
                }
            BookDetailsDetailsView(book: book)
                .tabItem {
                    Image(systemName: "star")
                    Text("Details")
                }
            BookDetailsLibraryView(book: book)
                .tabItem {
            Image(systemName: "star")
            Text("Library")
                }
                .toolbar {
                    ToolbarItemGroup(placement: .automatic) {
                        
                        navigationTitle("Title")
                        Button {
                            
                        } label: {
                            Label("Main", systemImage: "house")
                        }
                    }
                }
        }
        .navigationTitle("#" + book.issue + " - " + (book.title ?? book.series))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button{} label: {
                Label("More", systemImage: "ellipsis.circle")
            }
        )
    }
}

struct BookSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BookSheetView(book: books[1])
    }
}
