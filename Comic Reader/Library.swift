//
//  Library.swift
//  Comic Reader
//
//  Created by Ben Carney on 1/2/23.
//

import Foundation

struct ComicLibrary {
    var library: [Book] = load("libraryData.json")
}
