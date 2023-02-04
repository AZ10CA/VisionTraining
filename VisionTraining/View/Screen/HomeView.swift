//
//  HomeView.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-09-07.
//

import SwiftUI

struct HomeView: View {
    @State private var showNextScreen: Bool = false;
    
    var body: some View {
        GeometryReader {geo in
            VStack{
                Spacer()
                Image("IconSVG")
                    .resizable()
                    .frame(width: geo.size.width * 0.6, height:  geo.size.width * 0.6)
                Spacer()
                Button{
                    // Start
                    // redirect to next page
                    self.showNextScreen.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(Pallete.secondaryLight)
                            .frame(width: geo.size.width * 0.6, height: 75)
                        Text("Start")
                            .font(.custom(Font.primary, size: 24, relativeTo: .largeTitle))
                            .foregroundColor(Pallete.dark
                            )
                    }
                }
                
                Spacer()
                
            }
            .position(x: geo.size.width / 2, y: geo.size.height / 2)
        }
        .ignoresSafeArea()
        .background(.black)
        .fullScreenCover(isPresented: self.$showNextScreen) {
            // next screen
            EmptyView()
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
