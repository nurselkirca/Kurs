//
//  CharacterCellTableViewCell.swift
//  RickandMorty
//
//  Created by Nursel Kırca on 24.07.2025.
//

import UIKit

class CharacterCell: UITableViewCell {
  
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var characterNameLabel: UILabel!
    
    static let identifier = "CharacterCell"
}

