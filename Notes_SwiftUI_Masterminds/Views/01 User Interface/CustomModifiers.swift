//
//  CustomModifiers.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 01/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI


struct MyModifiers2: ViewModifier {
   var size: CGFloat
    
   init(size: CGFloat) {
      self.size = size
   }
   func body(content: Content) -> some View {
      content
         .font(Font.system(size: size).weight(.semibold))
         .foregroundColor(Color.blue)
   }
}
 
struct CustomModifiers: View {
   var body: some View {
          Image(systemName: "envelope.circle")
             .modifier(MyModifiers2(size: 50))
       }
    }
struct CustomModifiers_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiers()
    }
}
