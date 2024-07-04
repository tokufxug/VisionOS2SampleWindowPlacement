//
//  ControlView.swift
//  VisionOS2SampleWindowPlacement
//
//  Created by Sadao Tokuyama on 7/5/24.
//

import SwiftUI

struct ControlView: View {
    @State var label: String = "Rotate OFF"
    var body: some View {
        Button(action: {
            isRotate = !isRotate
            label = isRotate ? "Rotate ON" : "Rotate OFF"
        }) {
            Text(label)
                .font(.extraLargeTitle)
                .frame(width: 300, height: 200)
        }.padding()
    }
}

#Preview {
    ControlView()
}
