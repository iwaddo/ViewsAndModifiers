//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ian Waddington on 19/11/2022.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}


struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
    
extension View {
    func titleStyle() -> some View {
        modifier(Title())
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

struct ContentView: View {
    @State private var useRedText = false
    
    @ViewBuilder var spells: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    var body: some View {
                   
            VStack(spacing: 10) {
                Color.blue
                    .frame(width: 200, height: 300)
                    .watermarked(with: "Hacking with Swift")
                
                
                Text("Cheeky Chappy")
                    .modifier(Title())
                Text("Gryffindor")
                    .titleStyle()
                Text("Hufflepuff")
                    .font(.largeTitle)
                Text("Ravenclaw")
                Text("Slytherin")
                    .titleStyle()
                
                CapsuleText(text: "Wombat")
                CapsuleText(text: "Weevil")
                spells
            }
            .font(.title)
            
    
            
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
