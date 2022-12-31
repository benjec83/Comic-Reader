//
//  BookTileViewModel.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import SwiftUI


struct BookTileViewModel: View {
    var book: Book
    
    var body: some View {

            VStack(alignment: .leading) {
                book.image
//                    .frame(width: 180.0)
//                    .scaledToFit()
                    .resizable(capInsets: EdgeInsets(top: 1.0, leading: 1.0, bottom: 1.0, trailing: 1.0))
                    .shadow(radius: 1)
                VStack(alignment: .leading) {
                    
                    Text("#" + book.issue + " - " + (book.title ?? ""))
                        .font(.subheadline)
                        .lineLimit(2)
                    
                    Text(book.series + " (" + book.volume + ")")
                        .font(.caption2)
                        .lineLimit(1)
                }
            }
            .frame(width: 180, height: 345)
            .padding()
        }    
}


struct BookTileViewModel_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BookTileViewModel(book: books[0])
            BookTileViewModel(book: books[1])
            BookTileViewModel(book: books[5])
        }
    }
}
