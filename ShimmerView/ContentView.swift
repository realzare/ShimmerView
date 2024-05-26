//
//  ContentView.swift
//  ShimmerView
//
//  Created by Hossein Zare on 5/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
            ScrollView {
                ForEach(0..<4) {_ in
                    Loader()
                }
            }
        }
    }
}
#Preview {
    ContentView()
}

