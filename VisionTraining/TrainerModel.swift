//
//  TrainerLogic.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-08-27.
//

import SwiftUI


@MainActor class TrainerModel: ObservableObject {
    @Published var score: Int = 0; // score of the user on the current round
    @Published var rounds: Int = 0; // number of rounds this user has played
    @Published var started: Bool = false; //  whether the game has been started by the user
    @Published var isCorrect: Bool?; // true if the correct square was selected, false otherwise, nil when game has not started yet
    @Published var move: Position?; // the current move selected by the engine
    @Published var wrongAttempt: Bool = false;
    
    static var shared = TrainerModel()
    
    private init(){}
}

// MARK: - Functionalities
extension TrainerModel {
    
    func start(){
        reset()
        started = true
        prepareNextRound()
    }
    
    func reset(){
        wrongAttempt = false;
        rounds = 0;
        score = 0;
        move = nil;
        started = false;
    }

    func squareClicked(position: Position){
        guard started else { start(); return }
        
        if let mv = move{
            self.wrongAttempt = !(position == mv)
            score += self.wrongAttempt ? 0 : 1;
            rounds += 1
        }
        guard !self.wrongAttempt else { return }
        prepareNextRound()
    }
    
    func prepareNextRound(){
        guard started else { return }
        self.wrongAttempt = false;
        move = Position(BoardModel.shared.files.randomElement()!, BoardModel.shared.ranks.randomElement()!)
    }
    
}
