//
//  InfoPlistLocation.swift
//  Notes_SwiftUI_Masterminds
//
//  Created by jose francisco morales on 01/08/2020.
//  Copyright © 2020 jose francisco morales. All rights reserved.
//

import SwiftUI

struct InfoPlistLocation: View {
    var body: some View {
        Text("""
Info.plist into a folder like "Supporting Files".\n
        Click your Info.plist and go to your File Inspector . On Location row, change it to Relative to Project so you can get the path within your project and COPY that.\n
        Now go to yourBuild Settings and find the Info.plist File and paste the new path of your Info.plist
""")
    }
}

struct InfoPlistLocation_Previews: PreviewProvider {
    static var previews: some View {
        InfoPlistLocation()
    }
}
