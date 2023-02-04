//
//  StandardChessBoard.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-08-28.
//

import SwiftUI

@MainActor class BoardModel: ObservableObject {
    @Published var whiteColor: Color = .white;
    @Published var blackColor: Color = Color("BS_V1");
    @Published var gutter: CGFloat = 0; // space between squares
    @Published var files: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h"];
    @Published var ranks: [Character] = ["1", "2", "3", "4", "5", "6", "7", "8"];
    
    static var shared = BoardModel()
    
    private init(){}
}
