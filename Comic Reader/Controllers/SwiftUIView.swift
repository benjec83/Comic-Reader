//
//  SwiftUIView.swift
//  Comic Reader
//
//  Created by Benjamin Carney on 1/20/23.
//

import SwiftUI

struct SwiftUIView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    
    var focus: String
    
    let book: Book
    let books: [Book]
    
    var body: some View {
        NavigationSplitView {
            /* column 1 */
            
            List {
                
                NavigationLink(destination: HomeView(recentlyAdded: books)) {
                    Label("Home", systemImage: "book")
                }
                NavigationLink(destination: SearchView()) {
                    Label("Search", systemImage: "magnifyingglass")
                }
                
            }
        }detail: {
            /* column 2 */
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(focus: "Focus", book: books[1], books: books)
            .environmentObject(ModelData())
    }
}
