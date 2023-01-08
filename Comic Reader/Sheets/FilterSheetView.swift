//
//  FilterSheetView.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/7/23.
//

import SwiftUI

struct FilterSheetView: View {
    var body: some View {
            NavigationStack {
                
                
                
                List {
                    Section("Sort By") {
                        HStack {
                            Spacer()
                            VStack {
                                Button("Series") {
                                    print("Series pressed")
                                }
                                .padding(.horizontal, 28.0)
                                .padding(.vertical,10)
                                .frame(width: 200.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                Button("Title") {
                                    print("Title pressed")
                                }
                                .padding(.horizontal, 28.0)
                                .padding(.vertical,10)
                                .frame(width: 200.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                
                            }
                            VStack {
                                Button("Date Added") {
                                    print("Date Added pressed")
                                }
                                .padding(.horizontal, 28.0)
                                .padding(.vertical,10)
                                .frame(width: 200.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.automatic/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                Button("Date Released") {
                                    print("Date Released pressed")
                                }
                                .padding(.horizontal, 28.0)
                                .padding(.vertical,10)
                                .frame(width: 200.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                
                            }
                            Spacer()
                        }
                    }
                    Section("Filter By") {
                        VStack {
                            VStack {
                                VStack {
                                    HStack {
                                        Text("Publisher")
                                        Spacer()
                                        HStack {
                                            Text("View all")
                                            Image(systemName: "chevron.right")
                                        }
                                    }
                                    HStack {
                                        HStack {
                                            Text("Marvel")
                                            Image(systemName: "x.circle.fill")
                                        }
                                        .padding(.leading,14)
                                        .padding(.trailing,5)
                                        .padding(.vertical,5)
                                        .background(
                                            Capsule()
                                                .fill(Color(.black))
                                        )
                                        .foregroundColor(Color(.white))
                                        Spacer()
                                    }
                                }
                                .padding(.horizontal, 20.0)
                            }
                            VStack {
                                HStack {
                                    Text("Series")
                                    Spacer()
                                    HStack {
                                        Text("View all")
                                        Image(systemName: "chevron.right")
                                    }
                                }
                                HStack {
                                    HStack {
                                        Text("Avengers")
                                        Image(systemName: "x.circle.fill")
                                    }
                                    .padding(.leading,14)
                                    .padding(.trailing,5)
                                    .padding(.vertical,5)
                                    .background(
                                        Capsule()
                                            .fill(Color(.black))
                                    )
                                    .foregroundColor(Color(.white))
                                    HStack {
                                        Text("Miles Morales: Spider-Man")
                                        Image(systemName: "x.circle.fill")
                                    }
                                    .padding(.leading,14)
                                    .padding(.trailing,5)
                                    .padding(.vertical,5)
                                    .background(
                                        Capsule()
                                            .fill(Color(.black))
                                    )
                                    .foregroundColor(Color(.white))
                                    HStack{
                                        Text("The Scarlet Witch")
                                        Image(systemName: "x.circle.fill")
                                    }
                                    .padding(.leading,14)
                                    .padding(.trailing,5)
                                    .padding(.vertical,5)
                                    .background(
                                        Capsule()
                                            .fill(Color(.black))
                                    )
                                    .foregroundColor(Color(.white))
                                    Spacer()
                                }
                            }
                            .padding(.horizontal, 20.0)
                        }
                        
                        .navigationTitle("Filter")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarItems(trailing:
                                                Button("Reset") {
                            print("Reset pressed")
                        }
                        )
                    }
                }
            }
        }
    }


struct FilterSheetView_Previews: PreviewProvider {
    static var previews: some View {
        FilterSheetView()
    }
}
