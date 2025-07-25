//
//  Character.swift
//  RickandMorty
//
//  Created by Nursel Kırca on 24.07.2025.
//

import Foundation

struct CharacterResponse: Decodable {
    let results: [Character]
}

struct Character: Decodable, Encodable {
    let id: Int
    let name: String
    let image: String
}
