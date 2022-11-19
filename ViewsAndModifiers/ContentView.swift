//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ian Waddington on 19/11/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    @ViewBuilder var spells: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    var body: some View {
        HStack{
            VStack {
                Text("Gryffindor")
                Text("Hufflepuff")
                    .font(.largeTitle)
                Text("Ravenclaw")
                Text("Slytherin")
            }
            .font(.title)
            
            spells
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
