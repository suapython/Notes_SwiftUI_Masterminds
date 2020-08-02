//
//  Groups.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 01/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI

struct Groups: View {
    var body: some View {
          getView()
       }
       func getView() -> AnyView {
          let device = UIDevice.current.userInterfaceIdiom
          var myView: AnyView!
            
          if device == .phone {
             myView = AnyView(VStack {
              Text("iPhone")
                Group {
                   Text("This is the list of")
                   Text("Cities")
                }.foregroundColor(Color.gray)
                Group {
                   Text("Manchester")
                   Text("Viena")
                }.font(.largeTitle)
             })
          } else {
             myView = AnyView(Image(systemName: "keyboard"))
          }
          return myView
       }
    }

    


struct Groups_Previews: PreviewProvider {
    static var previews: some View {
        Groups()
    }
}
