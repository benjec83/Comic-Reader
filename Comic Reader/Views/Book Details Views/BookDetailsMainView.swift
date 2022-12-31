//
//  BookDetailsMainView.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/30/22.
//

import SwiftUI

struct BookDetailsMainView: View {
    var book: Book
    
    var body: some View {
        
        ScrollView {
            HStack {
                HStack {
                    CoverImage(image: book.image)
                        .scaledToFit()
                    //                        .frame(height: 390.0)
                        .frame(maxWidth: 255)
                        .padding(.all)
                        .shadow(radius: 1)
                }
                VStack {
                    //Book Details
                    HStack {
                        VStack(alignment: .leading) {
                            // Main Book Details
                            HStack {
                                Text("#" + book.issue + " - " + (book.title ?? ""))
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .lineLimit(2)
                            }
                            HStack {
                                Text(book.series + " (" + book.volume + ")")
                                    .font(.caption2)
                                    .lineLimit(2)
                            }
                            Text("Story Arc: " + (book.storyArc ?? ""))
                                .font(.caption2)
                                .lineLimit(1)
                            
                        }
                        Spacer()
                    }
                    .frame(width: 360)
                    
                    HStack(alignment: .top) {
                        // Secondary Book Details
                        
                        VStack(alignment: .center) {
                            Spacer()
                                .frame(height: 10)
                            Text("Publisher")
                                .font(.subheadline)
                            Spacer()
                                .frame(height: 1)
                            PublisherLogo(publisherLogo: book.logo)
                                .scaledToFit()
                                .frame(height: 40)
                            
                            Spacer()
                            
                            
                            
                        }
                        .frame(width: 120)
                        
                        Divider()
                        VStack {
                            Spacer()
                                .frame(height: 10)
                            Text("Released")
                                .font(.subheadline)
                            Spacer()
                                .frame(height: 1)
                            Text("Year")
                            Spacer()
                                .frame(height: 1)
                            Text("Month DD")
                                .font(.caption)
                            Spacer()
                        }
                        .frame(width: 120)
                        Divider()
                        VStack {
                            Spacer()
                                .frame(height: 10)
                            Text("Length")
                                .font(.subheadline)
                            Spacer()
                                .frame(height: 1)
                            Text("2000")
                            Spacer()
                                .frame(height: 1)
                            Text("Pages")
                                .font(.caption)
                            Spacer()
                        }
                        .frame(width: 120)
                        Spacer()
                    }
                    .frame(height: 65)
                    Divider()
                    VStack {
                        HStack {
                            Image(systemName: "magazine")
                                .accessibilityLabel("Read Now")
                            Button("Read Now") {
                                
                            }
                        }
                        .frame(width: 345.0, height: 55)
                        .background(Color.blue)
                        
                        .cornerRadius(51.0)
                        .foregroundColor(.white)
                        .font(.headline)
                        
                        //                        Spacer()
                        //                            .frame(height: 20)
                        
                        HStack {
                            Image(systemName: "checkmark.circle")
                                .accessibilityLabel("Mark As Read")
                            Button("Mark As Read") {
                                
                            }
                        }
                        .frame(width: 345.0, height: 55)
                        .background(Color.blue)
                        
                        .cornerRadius(51.0)
                        .foregroundColor(.white)
                        .font(.headline)
                        
                        //                        Spacer()
                        //                            .frame(height: 20)
                        
                        HStack {
                            Image(systemName: "square.stack.3d.up")
                                .accessibilityLabel("Add to Read Pile")
                            Button("Add to Read Pile") {
                                
                            }
                        }
                        .frame(width: 345.0, height: 55)
                        .background(Color.blue)
                        
                        .cornerRadius(51.0)
                        
                        .foregroundColor(.white)
                        .font(.headline)
                        HStack {
                            //Ratings & Action Button
                            VStack{
                                Text("Personal Rating")
                                    .font(.caption)
                                Text("􀋂􀋂􀋂􀋂􀋂")
                            }
                            Spacer()
                            VStack {
                                Text("Community Rating")
                                    .font(.caption)
                                Text("􀋂􀋂􀋂􀋂􀋂")
                            }
                            Spacer()
                            Image(systemName: "ellipsis.circle.fill")
                                .accessibilityLabel("More Actions")
                        }
                    }
                    .frame(height: 250)
                    
                    
                }
                .padding(.all)
                .frame(width: 360)
            }
            .padding(.top)
            .frame(width: 710)
            Divider()
                .padding(.horizontal, 30.0)
            VStack(alignment: .leading) {
                Text("Description:")
                    .fontWeight(.semibold)
                    .padding(.bottom, 5.0)
                Text(book.description ?? "")
            }
            .font(.subheadline)
            .padding(.horizontal)
            .frame(maxWidth: 690)
        }
        .background(Color.white)
        .frame(width: 710,
               height: 745)
        .cornerRadius(9)
//        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .overlay(
            RoundedRectangle(cornerRadius: 9)
                .stroke(Color.gray, lineWidth: 1)
            )
        
            
    }
    
}

struct BookDetailsMainView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsMainView(book: books[2])
    }
}
