//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by George Sigety on 1/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .padding()
            
            HStack {
                Button("Awesome") {
                    // this is the action!
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                Button("Great") {
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
