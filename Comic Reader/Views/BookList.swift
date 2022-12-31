//
//  BookList.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/30/22.
//

import SwiftUI

struct BookList: View {
    var body: some View {
        NavigationView {
            List(books) { book in
                NavigationLink {
                    BookDetail(book: book)
                } label: {
                    BookRow(book: book)
                }
            }
            .navigationTitle("Books")
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
