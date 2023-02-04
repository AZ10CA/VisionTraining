//
//  LogMatrixModel.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-08-31.
//

import Foundation

@MainActor class LogMatrixModel: ObservableObject{
    @Published var matrix: [[Verdict]] = []
    static let shared = LogMatrixModel()
    
    private init() {}
    
}
