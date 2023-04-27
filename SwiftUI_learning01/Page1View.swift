//
//  Page1View.swift
//  SwiftUI_learning01
//
//  Created by Yen Hung Cheng on 2023/4/27.
//

import SwiftUI

struct Page1View: View {
    
    @EnvironmentObject var lover: Lover
    @State var showBool = false
    
    var body: some View {
        VStack {
            Text("Page1")
                .font(.largeTitle)
            Image(systemName: "\(lover.age).circle")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Stepper(value: $lover.age) {
                Text("Age")
            }
            Button {
                showBool.toggle()
            } label: {
                Text("nextpage")
            // isPresented 傳入 true 時，跳轉一頁
            }.sheet(isPresented: $showBool) {
            // 跳轉 ShowDetail
                Page2View()
            }
            
        }
    }
}

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
        Page1View()
            .environmentObject(Lover())
    }
}
