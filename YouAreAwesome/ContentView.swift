//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by George Sigety on 1/19/23.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString =  ""
    @State private var imageName = ""
    @State private var soundName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    
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
                .padding()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            Spacer()
            
            Button("Show Message") {
                var messageNumber: Int
                var imageNumber: Int
                var soundNumber: Int

                let messages = ["You are Awesome!",
                                "You Are Skilled!",
                                "You are Great",
                                "Fabulous? That's you!",
                                "You Are Fantastic!",
                                "You Swifty!",
                                "You Make Me Smile!",
                                "I Think You're Magic!"]
                // this is the action
                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                    messageString = messages[messageNumber]
                } while lastMessageNumber == messageNumber
                lastMessageNumber = messageNumber
                
                repeat {
                    imageNumber = Int.random(in: 0...9)
                    imageName = "image\(imageNumber)"
                } while lastImageNumber == imageNumber
                lastImageNumber = imageNumber
                
                repeat {
                    soundNumber = Int.random(in: 0...5)
                    soundName = "sound\(soundNumber)"
                } while lastSoundNumber == soundNumber
                lastSoundNumber = soundNumber
                
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("😡 Could not read file named \(soundName)")
                    return
                }
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                } catch {
                    print("😡 ERROR: \(error.localizedDescription) creating audioPlayer.")
                }
            }
        }
        .buttonStyle(.borderedProminent)
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
