//
//  BookDetail.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/30/22.
//

import SwiftUI

struct BookDetail: View {
    var book: Book
    
    var body: some View {
        
        TabView {
            BookDetailsMainView(book: book)
                .tabItem {
                    Image(systemName: "Eye.fill")
                    Text("Overview")
                }
            BookDetailsCreativesView()
                .tabItem {
                    Image(systemName: "photo.artframe")
                    Text("Creative Team")
                }
            BookDetailsDetailsView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Details")
                }
            BookDetailsLibraryView()
                .tabItem {
            Image(systemName: "star")
            Text("Library")
        }
            
        }

        
    }
    

}




struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(book: books[2])
    }
}
