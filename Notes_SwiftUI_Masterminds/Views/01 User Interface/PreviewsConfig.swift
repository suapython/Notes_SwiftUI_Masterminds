//
//  Previews.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 01/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI

struct PreviewsConfig: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
             .foregroundColor(Color("MyColor"))
    }
}

struct PreviewsConfig_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
       Group {
           PreviewsConfig()
              .previewDevice(PreviewDevice(stringLiteral: "iPhone SE"))
              .previewDisplayName("iPhone SE")
        //.previewLayout(.sizeThatFits)
        .environment(\.colorScheme, .dark)
        .environment(\.sizeCategory, .large)
           PreviewsConfig()
              .previewDevice(PreviewDevice(stringLiteral: "iPhone Xs Max"))
              .previewDisplayName("iPhone Xs Max")
         .environment(\.colorScheme, .light)
    
        }
        
        Group {
           PreviewsConfig()
              .environment(\.sizeCategory, .small)
           PreviewsConfig()
              .environment(\.sizeCategory, .large)
           PreviewsConfig()
              .environment(\.sizeCategory, .extraExtraLarge)
        }.previewLayout(PreviewLayout.sizeThatFits)
        }
    }
}
