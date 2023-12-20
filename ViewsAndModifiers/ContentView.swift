//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Santiago Gonzalez on 20/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    
    var body: some View {
        Button("Hello World") {
            // flip the Boolean between true and false
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue)
        
        VStack {
            Text("Gryffindor")
                .font(.largeTitle) // child takes priority
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title)
        
        VStack {
            Text("Gryffindor")
                .blur(radius: 0)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .blur(radius: 5)
        
        VStack {
                    motto1
                    motto2
                }
        

    }
}

#Preview {
    ContentView()
}
