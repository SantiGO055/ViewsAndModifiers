//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Santiago Gonzalez on 20/12/2023.
//

import SwiftUI


// custom modifier:
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

//simple way to write custom modifier:
// extends frmo view
extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

// extensiones no pueden tener sus propias propiedades y los custom modifier si
extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}


// separamos en un componente aparte
struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
                .foregroundStyle(.white)
            CapsuleText(text: "Second")
                .foregroundStyle(.yellow)
            
            Text("Hello World!")
                .titleStyle() //custom modifier
                .watermarked(with: "Hacking with Swift")
        }
    }
}

#Preview {
    ContentView()
}
