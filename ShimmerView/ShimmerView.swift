//
//  ShimmerView.swift
//  ShimmerView
//
//  Created by Hossein Zare on 5/26/24.
//

import SwiftUI

struct ShimmerView: View {
    
    var gradientColors = [
        Color(uiColor: UIColor.systemGray5),
        Color(uiColor: UIColor.systemGray6),
        Color(uiColor: UIColor.systemGray5)
    ]
    
    @State private var startpoint: UnitPoint = .init(x: -1.7, y: -1.3)
    @State private var endpoint: UnitPoint = .init(x: 0, y: -0.2)
    var body: some View {
       LinearGradient(colors: gradientColors, startPoint: startpoint,
           endPoint: endpoint)
        .onAppear {
            withAnimation(.easeInOut(duration: 1)
                .repeatForever(autoreverses: false)) {
                    startpoint = .init(x: 1, y: 1)
                    endpoint = .init(x: 2.5, y: 2.5)
                }
        }
    }
}
#Preview {
    ShimmerView()
}


