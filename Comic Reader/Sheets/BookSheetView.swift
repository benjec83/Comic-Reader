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
                    Image(systemName: "info")
                    Text("Information")
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
                    Image(systemName: "rectangle.grid.3x2")
                    Text("Collection")
                }
        }
        .navigationTitle("#" + book.issue + " - " + (book.title ?? book.series))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                HStack {
            Button{
                print("Edit pressed")
            } label: {
                Label("Edit", systemImage: "pencil")
            }
            Button{
                print("More pressed")
            } label: {
                Label("More", systemImage: "ellipsis.circle")
            }
        })
    }
}
//
//struct BookSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        BookSheetView(book: books[1])
//    }
//}
