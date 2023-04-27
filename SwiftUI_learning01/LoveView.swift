//
//  LoveView.swift
//  SwiftUI_learning01
//
//  Created by Yen Hung Cheng on 2023/4/27.
//

import SwiftUI

struct LoveView: View {
    
    @StateObject var lover = Lover()
    @State var showBool = false
    
    
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Spacer()

                Image("霞柱")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                .clipShape(Circle())
                
                Spacer()
                
                VStack(spacing: 50) {
                    Text("時透無一郎")
                    Text("歲數：\(lover.age)")
                    Image(systemName: lover.isSingle ? "heart" : "heart.fill")
                        .font(.title)
                }
                Spacer()

            }
            
            Button {
                lover.isSingle.toggle()
            } label: {
                Text("改變感情狀態")
            }
            
            
            Button {
                lover.age = lover.age + 1
            } label: {
                Text("增加歲數")
            }
            
            Button {
                showBool.toggle()
            } label: {
                Text("nextpage")
            // isPresented 傳入 true 時，跳轉一頁
            }.sheet(isPresented: $showBool) {
            // 跳轉 ShowDetail
                ShowDetail(lover: lover)
            }

            
        }
    }
}

struct LoveView_Previews: PreviewProvider {
    static var previews: some View {
        LoveView()
    }
}
