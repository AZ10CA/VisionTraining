//
//  Position.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-08-28.
//

import Foundation

struct Position{
    let file: Character;
    let rank: Character;
    
    var color: Bool {
        (Int(file.asciiValue!) + Int(rank.asciiValue!)) % 2 == 1
    }
    
    init(_ file: Character, _ rank: Character){
        self.file = file;
        self.rank = rank;
    }
    
    func toString() -> String {
        "\(self.file)\(self.rank)"
    }
    
    static func ==(lhs:Position, rhs: Position) -> Bool {
        lhs.file == rhs.file && lhs.rank == rhs.rank
    }
}
