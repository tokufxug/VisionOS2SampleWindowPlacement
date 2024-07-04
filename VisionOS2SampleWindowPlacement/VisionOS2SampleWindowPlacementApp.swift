//
//  VisionOS2SampleWindowPlacementApp.swift
//  VisionOS2SampleWindowPlacement
//
//  Created by Sadao Tokuyama on 7/5/24.
//

import SwiftUI

var isRotate = false

@main
struct VisionOS2SampleWindowPlacementApp: App {
    var body: some Scene {
        
        WindowGroup {
            PancakeWindowView()
        }
        
        WindowGroup(id: "control") {
            ControlView()
        }.defaultWindowPlacement {content, context in
            return WindowPlacement(.utilityPanel)
        }.defaultSize(width: 600, height: 400)
    }
}
