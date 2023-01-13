//
//  ReadingList.swift
//  Comic Reader
//
//  Created by Benjamin Carney on 1/13/23.
//

import Foundation
import SwiftUI


struct ReadingList: Decodable, Identifiable, Hashable {
    let books: [position: Int, book: [Book]
    let id: Int
    let position: Int
}
