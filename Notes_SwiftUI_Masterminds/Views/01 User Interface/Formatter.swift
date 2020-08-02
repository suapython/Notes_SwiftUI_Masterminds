//
//  Formatter.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 01/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI

struct Formatter: View {
    var number: Float = 30.87512
    
    var formatter: NumberFormatter {
       let format = NumberFormatter()
       format.numberStyle = .currency
       return format
    }

       var body: some View {
        VStack{
          Text("My Number: \(number, specifier: "%.2f")")
        
        Text("My Number2: \(NSNumber(value: number), formatter: formatter)")
        }
       }
    }

struct Formatter_Previews: PreviewProvider {
    static var previews: some View {
        Formatter()
    }
}
