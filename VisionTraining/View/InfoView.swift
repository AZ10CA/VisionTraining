//
//  InfoView.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-09-07.
//

import SwiftUI

struct InfoView: View {
    @ObservedObject var trainer = TrainerModel.shared
    @ObservedObject var settings = SettingsModel.shared

    @ViewBuilder var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .background(.ultraThinMaterial)
            .overlay(
                HStack{
                    Spacer()
                    if trainer.started{
                        Image(systemName: "pause.fill")
                            .font(.largeTitle)
                            .foregroundColor(Pallete.light)
                            .onTapGesture {
                                trainer.reset()
                            }
                    } else {
                        Image(systemName: "play.fill")
                            .font(.largeTitle)
                            .foregroundColor(Pallete.light)
                            .onTapGesture {
                                trainer.start()
                            }
                    }
                    
                    Spacer()
                    VStack{
                        Text("Score")
                            .foregroundColor(Pallete.light) // fix color
                            .font(.custom(Font.primary, size: 30, relativeTo: .largeTitle))
                        
                        Text("\(trainer.score)")
                            .font(.custom(Font.primary, size: 60, relativeTo: .largeTitle))
                            .foregroundColor(Pallete.light)

                    }
                    Spacer()
                    Image(systemName: "rotate.right.fill")
                        .font(.largeTitle)
                        .foregroundColor(Pallete.light)
                        .onTapGesture {
                            withAnimation {
                                settings.isWhitePerspective.toggle()
                            }
                        }
                    Spacer()
                }
            )
            .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
            .background(Color("plain_background"))
    }
}
