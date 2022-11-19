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

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}
    
    var body: some View {
        HStack{
            VStack(spacing: 10) {
                Text("Gryffindor")
                Text("Hufflepuff")
                    .font(.largeTitle)
                Text("Ravenclaw")
                Text("Slytherin")
                
                CapsuleText(text: "Wombat")
                CapsuleText(text: "Weevil")
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
