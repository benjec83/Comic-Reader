//
//  CollectionListView.swift
//  Comic Reader
//
//  Created by Benjamin Carney on 1/10/23.
//

import SwiftUI

struct CollectionListView: View {
    
    @Environment(\.isSearching) var isSearching
    
    @State var focus: String
    
    var library = ComicLibrary()
    
    var SearchType: String {
        switch(focus) {
        case "Favorites":
            return "favorite"
        case "Recently Added":
            return "read"
        default:
            return ""
        }
    }
    
    let book: Book
    let books: [Book]
    
    @State private var selected: Book? = nil
    
    let spacing: CGFloat = 10
    
    var gridItems: [GridItem] {
        [GridItem(.adaptive(minimum: 180, maximum: 180))]
    }
    
    var body: some View {
        VStack {
//            GeometryReader { geometry in
                HStack(alignment: .top) {
                    HStack(alignment: .center) {
                        book.image
                            .resizable()
                            .frame(width: 180, height: 180)
                    }
                    .padding(.trailing, 10.0)
                    .shadow(radius: 1)
                    .scaledToFill()
                    
                    
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text("Headline")
                                .font(.title)
                            Text("Second Line")
                                .font(.title2)
                                .padding(.bottom, 2.0)
                            HStack {
                                Text("15 books")
                                Text("•")
                                    .font(.caption2)
                                Text("2016")
                                Text("•")
                                    .font(.caption2)
                                Text("DC Comics")
                            }
                                .font(.caption)
                                .padding(.bottom, 10.0)
                            Text("Description")
                                .font(.body)
                            Text("dlalglsddfgsddlfgl fsdlkfgslkgn adojorjiglnfd lknknlandglw;go; ad;gnafghahsfblsfndlnnlh;rwefb;lsdff")
                        }
                    }
                }
//                .frame(width: geometry.size.width, height: geometry.size.height * 0.25)
//            }
            List {
                ForEach(books) { item in
                    HStack {
                        Button {
                            selected = item
                        } label: {
                            BookRow(book: item)
                        }
                        .foregroundColor(.secondary)
                    }
                    .onDrag {
                        return NSItemProvider()
                    }
                }
                .onMove(perform: move)
            }
//            .listStyle(.grouped)
            //  Start of sheet
            .sheet(item: $selected) { item in
                NavigationStack {
                    BookSheetView(book: item)
                }
            }
        }
        .navigationTitle("\(focus)")

    }
}

func move(from source: IndexSet, to destination: Int) {
    books.move(fromOffsets: source, toOffset: destination )
    print(books.startIndex)
    print(books.endIndex)
}

struct CollectionListView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionListView(focus: "Focus", book: books[1], books: books)
    }
}

