//
//  Layout.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 01/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI

extension VerticalAlignment {
   enum FlagAlignment: AlignmentID {
      static func defaultValue(in dimension: ViewDimensions) -> CGFloat {
         return dimension[VerticalAlignment.center]
      }
   }
   static let alignFlag = VerticalAlignment(FlagAlignment.self)
}
struct Layout: View {
   var body: some View {
      ZStack {
         Image("newyork")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
         VStack {
            Spacer()
            TitleView()
                .padding()
            DescriptionView()
                .padding([.leading, .trailing, .bottom])
         }
      }.edgesIgnoringSafeArea(.all)
   }
}
struct TitleView: View {
   var body: some View {
      HStack(alignment: .alignFlag) {
         Text("🇺🇸")
            .font(.system(size: 40))
            .alignmentGuide(.alignFlag) { d in
               d[VerticalAlignment.center] }
         VStack(alignment: .leading) {
            HStack {
               Text("New York")
                  .font(.largeTitle)
                  .fontWeight(.bold)
                  .alignmentGuide(.alignFlag) { d in
                     d[VerticalAlignment.center] }
               Spacer()
               Text("♥️")
            }
            HStack {
               Text("⭐️⭐️⭐️⭐️⭐️")
                  .shadow(color: Color.black, radius: 1, x: 1, y: 1)
               Spacer()
            }
         }
      }
      .padding()
      .background(Color(red: 0.7, green: 0.8, blue: 0.7))
      .cornerRadius(20)
      .shadow(color: Color.black, radius: 5, x: 1, y: 1)
   }
}
struct DescriptionView: View {
   var body: some View {
      VStack {
         Text("New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. Its iconic sites include skyscrapers such as the Empire State Building and Central Park. Broadway theater is staged in neon-lit Times Square.")
            .font(.body)
            .fixedSize(horizontal: false, vertical: true)
      }
      .padding()
      .background(Color(red: 1, green: 1, blue: 1, opacity: 0.8))
      .cornerRadius(20)
   }
}



struct Layout_Previews: PreviewProvider {
    static var previews: some View {
        Layout()
    }
}
