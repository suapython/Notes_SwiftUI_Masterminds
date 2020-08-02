//
//  PropertyWrappers.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 02/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI

@propertyWrapper
struct ClamppedValue {
   var storedValue: Int = 0
   var min: Int = 0
   var max: Int = 255

   var wrappedValue: Int {
      get {
         return storedValue
      }
      set {
         if newValue < min {
            storedValue = min
         } else if newValue > max {
            storedValue = max
         } else {
            storedValue = newValue
         }
      }
   }
   init(wrappedValue: Int) {
      self.wrappedValue = wrappedValue
   }
}
struct Price {
   @ClamppedValue var firstPrice: Int
   @ClamppedValue var secondPrice: Int

   func printMessage() -> some View {
    return VStack{
      Text("First Price: \(firstPrice)")
      Text("Second Price: \(secondPrice)")
    }
   }
}


struct PropertyWrappers: View {
    var purchase = Price(firstPrice: 22, secondPrice: 350)
    
    var body: some View {
        purchase.printMessage()

    }
}

struct PropertyWrappers_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrappers()
    }
}
