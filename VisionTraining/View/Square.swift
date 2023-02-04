//
//  Square.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-08-30.
//

import SwiftUI

struct Square: View {
    @ObservedObject var trainer = TrainerModel.shared
    @ObservedObject var board = BoardModel.shared

    let size: CGFloat;
    let position: Position;
    
    @ViewBuilder var body: some View {
        Rectangle()
            .frame(width: size, height: size)
            .foregroundColor(self.position.color ? board.whiteColor : board.blackColor)
            .onTapGesture {
                print(position.toString())
                trainer.squareClicked(position: self.position)
            }
    }
}

struct Square_Previews: PreviewProvider {
    static var previews: some View {
        Square(size: 200, position: Position("a", "1"))
    }
}
