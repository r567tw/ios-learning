//
//  ContentView.swift
//  HelloWorld
//
//  Created by Fang on 2022/6/26.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        Button{
            let helper = AVSpeechUtterance(string:"HelloWorld")
            helper.voice = AVSpeechSynthesisVoice(language: "en-GB")
            let speaker = AVSpeechSynthesizer()
            speaker.speak(helper)
            
        } label:{
            Text("First APP").fontWeight(.bold)
        }
        .padding()
        .foregroundColor(Color.black)
        .background(Color.orange)
        .cornerRadius(30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
