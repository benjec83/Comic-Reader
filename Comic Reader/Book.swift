//
//  BookModel.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/29/22.
//

import Foundation
import SwiftUI

struct Book: Hashable, Codable, Identifiable {
    
    var id: Int
    var series: String
    var title: String?
    var issue: String
    var volume: String
    var storyArc: String?
    var description: String?
    var favorite: Bool
    var read: Int?
    var downloaded: Bool?
//    var creativeTeam: [CreativeTeam]?


    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var publisherLogo: String
    var logo: Image {
        Image(publisherLogo)
    }
    
}
