//
//  BindingView.swift
//  SwiftUI_learning01
//
//  Created by Yen Hung Cheng on 2023/4/26.
//

import SwiftUI

struct BindingView: View {
    
    @State var play = false
    
    var body: some View {
        
        VStack {
            Image(play ? "霞柱" : "暫停")
                .resizable()
                .scaledToFit()
            // 將設計的 button 加入畫面
            PlayerButton(play: $play)
            
        }
        
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
