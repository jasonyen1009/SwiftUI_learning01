//
//  PlayerButton.swift
//  SwiftUI_learning01
//
//  Created by Yen Hung Cheng on 2023/4/26.
//

import SwiftUI

struct PlayerButton: View {
    
    @Binding var play: Bool
    
    var body: some View {
        VStack {
            
            Button {
                play.toggle()
            }label: {
                Image(systemName: play ? "play.circle" : "pause.circle")
            }
            .font(.title)
        }
    }
}

struct PlayerButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayerButton(play: .constant(true))
    }
}
