//
//  BookDetailsCreativesView.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/30/22.
//

import SwiftUI

struct BookDetailsCreativesView: View {
    var body: some View {
        HStack {
            Text("Creative View")
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

struct BookDetailsCreativesView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsCreativesView()
    }
}
