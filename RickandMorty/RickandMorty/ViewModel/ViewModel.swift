//
//  ViewModel.swift
//  RickandMorty
//
//  Created by Nursel Kırca on 25.07.2025.
//

import Foundation

struct ViewModel {
    
    private let character: Character
    
    init(character: Character) {
        self.character = character
    }
    
    var nameLabel: String {
        return character.name
    }
    
    var imageURL: URL? {
        return URL(string: character.image)
    }
    
    var id: Int {
        return character.id
    }
}



