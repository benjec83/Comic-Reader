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
    var issue: Int
    var volume: Int
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

extension Book {
    static let sampleData: [Book] =
    [
    Book(id: 1001,
         series: "Superman: Son of Kal-El",
         issue: 14,
         volume: 2017,
         favorite: true,
         imageName: "8613306-wwww",
         publisherLogo: "DC_Comics_logo"),
    Book(id: 1002,
         series: "Superman: Son of Kal-El",
         issue: 15,
         volume: 2017,
         favorite: false,
         imageName: "8651735-wwww",
         publisherLogo: "DC_Comics_logo"),
    Book(id: 1003,
         series: "Superman: Son of Kal-El",
         issue: 16,
         volume: 2017,
         favorite: false,
         imageName: "8679845-large-1649158",
         publisherLogo: "DC_Comics_logo"),
    Book(id: 1004,
         series: "Superman: Son of Kal-El",
         issue: 17,
         volume: 2017,
         favorite: true,
         imageName: "8712277-superman-son-of-kal-el-17",
         publisherLogo: "DC_Comics_logo"),
    Book(id: 1007,
         series: "Nightwing",
         issue: 79,
         volume: 2016,
         favorite: true,
         imageName: "nightwing79",
         publisherLogo: "DC_Comics_logo"),
    Book(id: 1009,
         series: "We Are Robin",
         issue: 1,
         volume: 2015,
         favorite: false,
         imageName: "weAreRobin01",
         publisherLogo: "DC_Comics_logo"),
    ]
}

