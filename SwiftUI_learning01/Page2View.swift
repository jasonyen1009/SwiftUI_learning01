//
//  Page2View.swift
//  SwiftUI_learning01
//
//  Created by Yen Hung Cheng on 2023/4/27.
//

import SwiftUI

struct Page2View: View {
    
    @EnvironmentObject var lover: Lover

    
    var body: some View {
        VStack {
            Text("Page2")
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

struct Page2View_Previews: PreviewProvider {
    static var previews: some View {
        Page2View()
            .environmentObject(Lover())
    }
}
