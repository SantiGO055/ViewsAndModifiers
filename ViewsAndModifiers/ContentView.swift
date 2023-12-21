//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Santiago Gonzalez on 20/12/2023.
//

import SwiftUI

// separamos en un componente aparte
struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
        }
    }
}

#Preview {
    ContentView()
}
