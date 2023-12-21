//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Santiago Gonzalez on 20/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    // views like properties
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    
    //computed properties
    var motto3: some View {
        Text("Draco dormiens")
    }
    
    // cuando se separa en variables mas de una vista hay que agrupar por vstack o Group:
    var spells: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    // o agregar a mano el viewbuilder :
    @ViewBuilder var spells1: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    
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
        VStack {
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
        }
        

    }
}

#Preview {
    ContentView()
}
