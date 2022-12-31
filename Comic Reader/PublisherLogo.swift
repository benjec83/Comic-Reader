//
//  PublisherLogo.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import SwiftUI

struct PublisherLogo: View {
    var publisherLogo: Image
    
    var body: some View {
        publisherLogo
            .resizable(capInsets: EdgeInsets(top: 1.0, leading: 1.0, bottom: 1.0, trailing: 1.0))
            
    }
}

struct PublisherLogo_Previews: PreviewProvider {
    static var previews: some View {
        PublisherLogo(publisherLogo: Image("logo"))
    }
}
