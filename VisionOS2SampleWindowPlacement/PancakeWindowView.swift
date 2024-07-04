//
//  PancakeWindowView.swift
//  VisionOS2SampleWindowPlacement
//
//  Created by Sadao Tokuyama on 7/5/24.
//
import SwiftUI
import RealityKit

struct PancakeWindowView: View {
    
    @Environment(\.openWindow) private var openWindow
    
    let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    @State private var r:Double = 0
    
    var body: some View {
        RealityView { content in
            let model = try! await ModelEntity(named: "pancakes")
            model.scale*=1.5
            content.add(model)
        }
        .rotation3DEffect(.degrees(r), axis: (x: 0.0, y: 1.0, z: 0.0))
        .onReceive(timer) { _ in
            if isRotate {
                self.r+=0.5
            }
        }.onAppear {
            openWindow(id: "control")
        }
    }
    
}

#Preview {
    PancakeWindowView()
}
