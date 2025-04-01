//
//  ReadingListsView.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI

struct ReadingListsView: View {
    
    @EnvironmentObject var manager: DataManager
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: []) private var bookItems: FetchedResults<Book>
    
    var body: some View {
        Text("Reading List View")
            .navigationTitle("Reading Lists")
    }
}

struct ReadingListsView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingListsView()
    }
}
