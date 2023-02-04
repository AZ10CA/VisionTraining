//
//  ChessBoard.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-08-30.
//

import SwiftUI

struct MoveOverlay: View {
    @ObservedObject var trainer = TrainerModel.shared
    @ViewBuilder var body: some View {
        Text(trainer.move?.toString() ?? "_")
            .font(.custom(Font.primary, size: 64))
            .shadow(color: .gray, radius: 25, x: 0, y: 0)
            .foregroundColor(trainer.wrongAttempt ? .red : Pallete.dark)
    }
}


struct Board: View {
    @ObservedObject var trainer = TrainerModel.shared
    @ObservedObject var board = BoardModel.shared
    @ObservedObject var settings = SettingsModel.shared
    
    var body: some View {
        GeometryReader{geo in
            ZStack{
                VStack(spacing: board.gutter){
                    ForEach(0..<board.ranks.count, id:\.self){row in
                        HStack(spacing: board.gutter){
                            ForEach(0..<board.files.count, id:\.self){col in
                                Square(size: (min(geo.size.width, geo.size.height)  - 7 * board.gutter) / 8, position: Position(board.files[col], board.ranks[board.ranks.count - row - 1]))
                            }
                        }
                    }
                }
                .position(x: geo.size.width / 2, y: geo.size.height / 2)
                .rotationEffect(.degrees(settings.isWhitePerspective ? 0 : 180))
                
                Text(!trainer.started ? "Tap to start" : trainer.move?.toString() ?? "_")
                    .font(.custom(Font.primary, size: 45, relativeTo: .largeTitle))
                    .bold()
                    .opacity(0.5)
                    .foregroundColor(trainer.wrongAttempt ? .red :  Pallete.dark)
            }
        }
    }
    
}



struct ChessBoard_Previews: PreviewProvider {
    static var previews: some View {
        Board()
    }
}
