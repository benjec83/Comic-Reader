//
//  BookEditView.swift
//  Comic Reader
//
//  Created by Ben Carney on 7/30/23.
//

import SwiftUI

struct BookEditView: View {
    @Binding var book: Book
    @State private var title = ""
    @State private var series = ""
    @State private var issue = ""
    @State private var storyArc = ""
    @State private var volume = ""
    
    var body: some View {
        NavigationStack {
            Form {
                
                Section("Basic Details") {
                    HStack {
                        VStack {
                            TextField("Title", text: $title)
                        
                            TextField("Series", text: $series)

                            TextField("Issue", text: $issue)

                            TextField("Story Arc", text: $storyArc)

                            TextField("Volume", text: $volume)
                        }
                        .padding(.horizontal)
                        Divider()
                            .padding(.vertical)
                        VStack {
                            TextField("Title", text: $title)
                        
                            TextField("Series", text: $series)

                            TextField("Issue", text: $issue)

                            TextField("Story Arc", text: $storyArc)

                            TextField("Volume", text: $volume)
                        }
                        .padding(.horizontal)

                    }
                    
                }
                Section("More Details") {
                    HStack {
                        VStack {
                            TextField("Title", text: $title)
                        
                            TextField("Series", text: $series)

                            TextField("Issue", text: $issue)

                            TextField("Story Arc", text: $storyArc)

                            TextField("Volume", text: $volume)
                        }
                        .padding(.horizontal)
                        Divider()
                            .padding(.vertical)
                        VStack {
                            TextField("Title", text: $title)
                        
                            TextField("Series", text: $series)

                            TextField("Issue", text: $issue)

                            TextField("Story Arc", text: $storyArc)

                            TextField("Volume", text: $volume)
                        }
                        .padding(.horizontal)

                    }
                    
                }
                
                

            }
            .navigationTitle("Book Details")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Text("Save")
                }

            }

        }
    }
    
}

struct BookEditView_Previews: PreviewProvider {
    static var previews: some View {
        BookEditView(book: .constant(Book.sampleData[0]))
    }
}


