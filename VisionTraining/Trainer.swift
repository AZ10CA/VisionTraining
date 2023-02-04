//
//  Trainer.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-08-27.
//

import Foundation
import SwiftUI

@MainActor class Trainer: ObservableObject {
    static let alpha: Trainer = Trainer();
    @Published var gutter: CGFloat;
    
    
    private init(){}
}
