//
//  BookRow.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import SwiftUI

struct BookRow: View {
    
    var book: Book
    
    var body: some View {
        
        HStack {
            book.image
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text("#" + book.issue + " - " + (book.title ?? ""))
                Text(book.series)
                    .font(.caption)
            }
            Spacer()
            
            if book.favorite ?? false {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                //            }
            }
            
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BookRow(book: books[0])
            BookRow(book: books[1])
            BookRow(book: books[2])
            BookRow(book: books[3])
            BookRow(book: books[4])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
