//
//  BookTile.swift
//  Comic Reader
//
//  Created by Benjamin Carney on 1/14/23.
//

import SwiftUI

struct BookStatusBar: View {
    
    var book: Book
    
    var readColor: Color {
        if book.read ?? 0 >= 100 {
            return Color.blue
        } else {
            return Color("NotTrueColor")
        }
    }
    
    var favoriteColor: Color {
        if book.favorite == true {
            return Color.blue
        } else {
            return Color("NotTrueColor")
        }
    }
    
    var downloadColor: Color {
        if book.downloaded == true {
            return Color.blue
        } else {
            return Color("NotTrueColor")
        }
    }
    
    var body: some View {
        HStack(spacing: -1.0) {
            Spacer()
            Image(systemName: "checkmark.seal")
                .foregroundColor(readColor)
            Image(systemName: "star")
                .foregroundColor(favoriteColor)
            Image(systemName: "square.and.arrow.down")
                .foregroundColor(downloadColor)
            Spacer()
            
        }
    }
}

