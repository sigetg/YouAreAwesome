//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by George Sigety on 1/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString =  ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0

    
    var body: some View {
        
        
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
            
            Button("Show Message") {
                let messages = ["You are Awesome!",
                                "You Are Skilled!",
                                "You are Great",
                                "Fabulous? That's you!",
                                "You Are Fantastic!",
                                "You Swifty!",
                                "You Make Me Smile!",
                                "I Think You're Magic!"]
                // this is the action
                messageString = messages[messageNumber]
                messageNumber += 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                imageName = "image\(imageNumber)"
                imageNumber += 1
                if imageNumber > 9 {
                    imageNumber = 0
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
