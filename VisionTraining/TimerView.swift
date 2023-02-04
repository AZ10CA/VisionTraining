//
//  TimerView.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-08-29.
//

import SwiftUI

struct TimerView: View {
    @State private var started: Bool = false;
    @State private var time: Int = 10;
    
    
    var body: some View {
        VStack{
        Image("TimerIcon")
            .resizable()
            .scaledToFit()
            .frame(width: 100)
            Text("\(self.time)")
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
