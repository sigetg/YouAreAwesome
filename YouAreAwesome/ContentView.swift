//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by George Sigety on 1/19/23.
//

import SwiftUI
 
struct ContentView: View {
    @State private var messageString = "When the genius bar needs help, they call you!"
    
    var body: some View {

        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 1)
                .padding()
            
            HStack {
                Button("Awesome") {
                    // this is the action
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                Button("Great") {
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
            .border(.orange, width: 1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
