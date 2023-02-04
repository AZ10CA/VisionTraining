//
//  ContentView.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-08-27.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView{
            GeometryReader{geo in
                VStack{
                    Board()
                        .frame(height: geo.size.height * 0.6)
                    
                    InfoView()
                        .padding(.horizontal)
                        .frame(height: geo.size.height * 0.2)
                }
                .position(x: geo.size.width / 2, y: geo.size.height / 2)
                
            }
            .navigationTitle("Board")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            
            .background(Color("plain_background"))
            // remove this when you have a light mode color
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
