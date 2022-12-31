//
//  BookDetailsDetailsView.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/30/22.
//

import SwiftUI

struct BookDetailsDetailsView: View {
    var body: some View {
        HStack {
            Text("Book Details")
        }
        .background(Color.white)
        .frame(width: 710,
               height: 745)
        .cornerRadius(9)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .overlay(
            RoundedRectangle(cornerRadius: 9)
                .stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct BookDetailsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsDetailsView()
    }
}
