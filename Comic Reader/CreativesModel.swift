//
//  CreativesModel.swift
//  Comic Reader
//
//  Created by Ben Carney on 12/30/22.
//

import Foundation
import SwiftUI

struct CreativeTeam {
let writer: [People]
    let penciller: [People]
    let inker: [People]
    let colorist: [People]
    let letterer: [People]
    let coverArtist: [People]
    
    let creativeTeam: [CreativePerson]
}

struct CreativePerson {
    let firstName: String
    let lastName: String
    let role: String
    let id: String
    
    private var creativeImage: String
    var image: Image {
        Image(creativeImage)
    }
}


