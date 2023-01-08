//
//  FilterRow.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/7/23.
//

import SwiftUI

struct FilterRow: View {
    var body: some View {
        VStack {
            HStack {
                Text("Search Category")
                Spacer()
                HStack {
                    Text("View all")
                    Image(systemName: "chevron.right")
                }
            }
            HStack {
                Text("Category 1")
                    .padding(.horizontal,14)
                    .padding(.vertical,5)
                    .background(
                    Capsule()
                        .fill(Color(.black))
                    )
                    .foregroundColor(Color(.white))
                Text("Category 2")
                    .padding(.horizontal,14)
                    .padding(.vertical,5)
                    .background(
                    Capsule()
                        .fill(Color(.black))
                    )
                    .foregroundColor(Color(.white))
                Text("Category 3")
                    .padding(.horizontal,14)
                    .padding(.vertical,5)
                    .background(
                    Capsule()
                        .fill(Color(.black))
                    )
                    .foregroundColor(Color(.white))
                Spacer()
            }
Divider()
        }
        .padding(.horizontal, 20.0)
        
    }
}

struct FilterRow_Previews: PreviewProvider {
    static var previews: some View {
        FilterRow()
    }
}
