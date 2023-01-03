//
//  BookTileModel.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import SwiftUI


struct BookTileModel: View {
    var book: Book
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                book.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .shadow(radius: 1)
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
        .foregroundColor(.secondary)
        .multilineTextAlignment(.leading)
        
    }    
}


struct BookTileViewModel_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BookTileModel(book: books[0])
            BookTileModel(book: books[1])
            BookTileModel(book: books[5])
        }
    }
}
