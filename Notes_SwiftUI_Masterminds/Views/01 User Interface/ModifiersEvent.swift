//
//  ModifiersEvent.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 01/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI

struct ModifiersEvent: View {
    let fontSize: CGFloat = 100

       var body: some View {
          Image(systemName: "envelope.circle")
             .font(Font.system(size: fontSize))
             .onAppear(perform: {
                print("Current font size: \(self.fontSize)")
             })
       }
    }

struct ModifiersEvent_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersEvent()
    }
}
