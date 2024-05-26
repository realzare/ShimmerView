//
//  Loader.swift
//  ShimmerView
//
//  Created by Hossein Zare on 5/26/24.
//

import SwiftUI

struct Loader: View {
    var body: some View {
        
        Color.white

        VStack {
            ShimmerView()
                .frame(height: 200)
            VStack {
                HStack {
                    ShimmerView()
                        .cornerRadius(30)
                        .frame(width: 60, height: 60)
                    VStack {
                        ShimmerView()
                            .frame(height: 20)
                        ShimmerView()
                            .frame(height: 20)
                    }
                }
            }
            .padding()
        }
    }
}
#Preview {
    Loader()
}

