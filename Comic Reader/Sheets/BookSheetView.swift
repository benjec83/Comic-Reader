//
//  BookSheetView.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/1/23.
//

import SwiftUI

struct BookSheetView: View {
    var book: Book
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        TabView {
            BookDetailsMainView(book: book)
                .tabItem {
                    Image(systemName: "eye.fill")
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
                .toolbar {
                    ToolbarItemGroup(placement: .navigation) {
                        
                        navigationTitle("Title")
                        Button {
                            
                        } label: {
                            Label("Main", systemImage: "house")
                        }
                    }
                }
        }
//        NavigationStack {
//            ScrollView {
//                VStack {
//                    Text("Line 1")
//                        .font(.largeTitle)
//                    Text("Line 2")
//                        .font(.title)
//                    HStack {
//                        Image("8712277-superman-son-of-kal-el-17")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                    }
//
//                }
//                .frame(maxWidth: 900)
//
//            .navigationTitle("This is the Title")
//            }
//
//
//        }
        
    }
}

struct BookSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BookSheetView(book: books[1])
    }
}
