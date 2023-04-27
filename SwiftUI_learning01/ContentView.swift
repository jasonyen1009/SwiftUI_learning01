//
//  ContentView.swift
//  SwiftUI_learning01
//
//  Created by Yen Hung Cheng on 2023/4/26.
//

import SwiftUI

struct ContentView: View {
    
    // 控制顯示的 heart 圖示
    @State private var isFill = true
    var body: some View {
        
        VStack {
            Image(systemName: isFill ? "heart.fill" : "heart")
                .resizable()
                .scaledToFit()
            
            Button {
                // 點選 button 時，觸發的事件
                isFill.toggle()
            } label: {
                Text("press")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
