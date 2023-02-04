//
//  SettingsModel.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-09-01.
//

import SwiftUI


@MainActor class SettingsModel: ObservableObject {
    @AppStorage("perspectiveMode") var isWhitePerspective: Bool = true;
    @AppStorage("lightMode") var isLightMode: Bool = true;
    
    static var shared = SettingsModel();
    
    private init() {}
    
    func togglePerspective(){
        withAnimation {
            self.isWhitePerspective.toggle()
        }
    }
}
