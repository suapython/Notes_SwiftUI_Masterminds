//
//  Modifiers.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 01/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI


struct MyModifiers: ViewModifier {
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


struct Modifiers: View {
    var body: some View {
   ScrollView {
            Image(systemName: "envelope.circle")
             .modifier(MyModifiers(size: 100))
            
            Text("Hello World!")
                .underline()
                .fontWeight(.heavy)
                .shadow(color: Color.gray, radius: 1, x: 1, y: 1)
            .frame(width: 250, height: 100, alignment: .leading)
            //.frame(minWidth: 0, maxWidth: .infinity)
            .padding(25)
            //.padding(EdgeInsets(top: 0.0, leading: 40.0, bottom: 0.0, trailing: 40.0))
           // .padding([.top, .bottom], 50)
            .font(Font.custom("Georgia", size: 50))
            //.font(Font.system(size: 50))
            //.font(.body)
            
            Text("Hello ")
               .font(.largeTitle)
            + Text("World")
               .underline()
            + Text("!!!")
               .fontWeight(.heavy)
            
            Text("Monsters are real, and ghosts are real too. They live inside us, and sometimes, they win. Stephen King.")
                    .padding()
                    .multilineTextAlignment(.center)
                    .lineSpacing(5)
                    .lineLimit(1)
                    .truncationMode(.tail)
            
            Color(red: 100/255, green: 228/255, blue: 255/255)
            .frame(width: 250, height: 100)
            
            Color.red
            .frame(width: 250, height: 100)
            
            Color("MyColor")
                    .frame(width: 250, height: 100) //defined in the assets for dark/light modes
            
            Text("Hello World3")
            .font(.largeTitle)
            .foregroundColor(Color.red)
            .font(.largeTitle)
            .padding(20)
            .background(Color.gray)
            .border(Color.yellow, width: 10)
            .cornerRadius(20)
            .overlay(
                Color(red: 1, green: 1, blue: 0.3, opacity: 0.2))
            .frame(width: 160, height: 40)
            
            }
        }
    }

struct Modifiers_Previews: PreviewProvider {
    static var previews: some View {
        Modifiers()
    }
}
