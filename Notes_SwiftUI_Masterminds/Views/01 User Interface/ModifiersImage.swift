//
//  ModifiersImage.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 01/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI

struct ModifiersImage: View {
     let myfont = Font.system(size: 100)
    
    var body: some View {
        ScrollView {
         Image("Toronto")
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.scaledToFit(),.scaledToFill()
                //.frame(width: 250, height: 100)
                //.clipped()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .cornerRadius(25)
            .padding(20)
            .shadow(color: Color.black, radius: 5, x: 5, y: 5)
           // .scaleEffect(CGSize(width: 0.5, height: 0.5))
            .blur(radius: 2)
            
            
            Text("🍔")
                    .font(Font.system(size: 100))
            
            Image(systemName: "envelope.circle")
              .font(myfont.weight(.semibold))
            
            
            
             Image("Toronto").resizable().scaledToFit()
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ModifiersImage_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersImage()
    }
}
