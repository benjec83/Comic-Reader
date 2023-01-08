//
//  SearchView.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI


struct SearchView: View {

    @State var searchQuery = ""
    
    var body: some View {
        Text("Search View")
            .navigationTitle("Search")
            .searchable(text: $searchQuery, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search")
            
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
