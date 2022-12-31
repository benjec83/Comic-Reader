//
//  CoverImage.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import SwiftUI

struct CoverImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable(capInsets: EdgeInsets(top: 1.0, leading: 1.0, bottom: 1.0, trailing: 1.0))
            
    }
}

struct CoverImage_Previews: PreviewProvider {
    static var previews: some View {
        CoverImage(image: Image("cover"))
    }
}
