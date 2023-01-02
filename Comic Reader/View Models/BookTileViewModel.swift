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
                HStack(alignment: .center) {
                    book.image
    //                    .frame(height: 266)
    //                    .scaledToFit()
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(radius: 1)
                }
                .frame(height: 266)
                
                VStack(alignment: .leading) {
                    
                    Text("#" + book.issue + " - " + (book.title ?? ""))
                        .font(.subheadline)
                        .lineLimit(2)
                    
                    Text(book.series + " (" + book.volume + ")")
                        .font(.caption2)
                        .lineLimit(1)
                    Spacer()
                    
                }
            }
            .frame(width: 180, height: 345)
            .padding()
            .scaledToFit()

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
