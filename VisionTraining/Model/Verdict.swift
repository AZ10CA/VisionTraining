//
//  Verdict.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-08-31.
//

import Foundation

struct Verdict: Hashable{
    let id = UUID();
    var position: Position;
    var value: Bool; // true if user chose the right position
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Verdict, rhs: Verdict) -> Bool {
        lhs.id == rhs.id
    }
}
