//
//  Stacks.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 01/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI

extension VerticalAlignment {
   enum BusAlignment: AlignmentID {
      static func defaultValue(in dimension: ViewDimensions) -> CGFloat {
         return dimension[VerticalAlignment.center]
      }
   }
   static let alignBus = VerticalAlignment(BusAlignment.self)
}



struct Stacks: View {
    var body: some View {
        ScrollView {
         VStack(alignment: .leading, spacing: 20)  {
             Spacer()
                Text("City")
                Text("New York")
            HStack {
               Image(systemName: "cloud")
                  .font(.system(size: 80))
               Text("New York")
            }
            ZStack(alignment: .bottom) {
               Image(systemName: "cloud")
                  .font(.system(size: 80))
               Text("New York")
                  .font(.system(size: 14))
                  .padding(8)
                  .background(Color.yellow)
                  .zIndex(-1)
            }.foregroundColor(Color.red)
             Spacer()
            HStack {
               Image(systemName: "cloud")
                  .font(.system(size: 80))
               VStack(alignment: .leading) {
                  Text("City")
                     .foregroundColor(.gray)
                  Text("New York")
                     .font(.title)
               }
                
               
                
            }
          HStack {
                            Text("Manchester")
                               .font(.title)
                               .lineLimit(1)
                              // .fixedSize()
                            Image(systemName: "cloud")
                               .font(.system(size: 130))
                            Text("New York")
                               .font(.title)
                               .lineLimit(1)
                               .layoutPriority(1)
                         }
            
            HStack(alignment: .center) {
                    Image("signbus")
                       .alignmentGuide(VerticalAlignment.center) { dimension in
                          dimension[VerticalAlignment.center] + 18 }
                    Image("signplane")
                       .alignmentGuide(VerticalAlignment.center) { dimension in
                          dimension[VerticalAlignment.center] + 68 }
                    Image("signphone")
                       .alignmentGuide(VerticalAlignment.center) { dimension in
                          dimension[VerticalAlignment.center] + 89 }
                 }.border(Color.blue, width: 2)
            
            HStack(alignment: .alignBus) {
               VStack {
                  Image("signbus")
                     .alignmentGuide(.alignBus) { dimension in dimension[VerticalAlignment.center] - 40 }
                  }
                  VStack(alignment: .leading) {
                     Text("Transportation")
                     Text("Bus")
                        .font(.largeTitle)
                        .alignmentGuide(.alignBus) { dimension in dimension[VerticalAlignment.center] }
               }
            }.border(Color.blue, width: 2)
            
             
              
             }
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
