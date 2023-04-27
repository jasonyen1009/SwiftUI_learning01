//
//  ShowDetail.swift
//  SwiftUI_learning01
//
//  Created by Yen Hung Cheng on 2023/4/27.
//

import SwiftUI

struct ShowDetail: View {
    
    @ObservedObject var lover: Lover
    
    var body: some View {
        
        VStack {
            Text("年齡")
                .font(.largeTitle)
            Image(systemName: "\(lover.age).circle")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Stepper(value: $lover.age) {
                Text("Age")
            }
            
            
        }
    }

}

struct ShowDetail_Previews: PreviewProvider {
    static var previews: some View {
        ShowDetail(lover: Lover())
    }
}
