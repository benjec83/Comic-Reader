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
                HStack(alignment: .center) {
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
                            Text("Title: " + (book.title ?? ""))
                                .font(.body)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                            Text("Issue: #" + book.issue)
                                .font(.caption2)
                                .lineLimit(2)
                            Text("Series: " + book.series + " (" + book.volume + ")")
                                .font(.caption2)
                                .lineLimit(2)
                            Text("Story Arc: " + (book.storyArc ?? ""))
                                .font(.caption2)
                                .lineLimit(1)
                            
                        }
                        .multilineTextAlignment(.leading)
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
                        Spacer()
                        HStack {
                            Button {
                                print("Read Now pressed")
                            } label: {
                                Label("Read Now", systemImage: "magazine")
                            }
                            .frame(width: 345.0, height: 55.0)
                            .accessibilityAddTraits([.isButton])
                            .accessibilityLabel("Read Now")
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/51.0/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                        }
                        .frame(width: 345.0, height: 55)
                        .background(Color.blue)
                        
                        .cornerRadius(51.0)
                        .foregroundColor(.white)
                        .font(.headline)
                        
                        HStack {
                            Button {
                                print("Mark As Read pressed")
                            } label: {
                                Label("Mark As Read", systemImage: "checkmark.circle")
                            }
                            .frame(width: 345.0, height: 55.0)
                            .accessibilityAddTraits([.isButton])
                            .accessibilityLabel("Mark As Read")
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/51.0/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                        }
                        
                        
                        HStack {
                            Button {
                                print("Add to Reading Pile pressed")
                            } label: {
                                Label("Add to Reading Pile", systemImage: "square.stack.3d.up")
                            }
                            .frame(width: 345.0, height: 55.0)
                            .accessibilityAddTraits([.isButton])
                            .accessibilityLabel("Add to Reading Pile")
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/51.0/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                        }
                        
                        .frame(width: 345.0, height: 55)
                        .background(Color.blue)
                        
                        .cornerRadius(51.0)
                        
                        .foregroundColor(.white)
                        .font(.headline)
                        Spacer()
                        HStack {
                            Spacer()
                            //Ratings
                            VStack{
                                Text("Personal Rating")
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(1)
                                HStack(spacing: -1.0) {
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                }
                                .foregroundColor(Color.gray)
                            }
                            Spacer()
                            VStack {
                                Text("Community Rating")
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(1)
                                HStack(spacing: -1.0) {
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                }
                                .foregroundColor(Color.gray)
                            }
                            Spacer()
                        }
                    }
                    .frame(height: 250)
                }
                .padding(.all)
                .frame(width: 380)
            }
            .padding(.top)
            .frame(width: 710)
            Divider()
                .padding(.horizontal, 30.0)
            VStack(alignment: .leading) {
                HStack {
                    Text("Description:")
                        .fontWeight(.semibold)
                        .padding(.bottom, 5.0)
                    Spacer()
                }
                Text(book.description ?? "")
            }
            .font(.subheadline)
            .padding(.horizontal)
            .frame(maxWidth: 690)
            
        }
    }
}
//
//
//struct BookDetailsMainView_Previews: PreviewProvider {
//    static var previews: some View {
//        BookDetailsMainView(book: books[2])
//    }
//}
