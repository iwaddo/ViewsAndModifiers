//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ian Waddington on 19/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World!")
            .background(.white)
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
        
//        Button("Hello, world!") {
//            print(type(of: self.body))
//        }
//        .frame(width: 200, height: 200)
//        .background(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
