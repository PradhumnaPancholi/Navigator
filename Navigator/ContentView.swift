//
//  ContentView.swift
//  Navigator
//
//  Created by Pradhumna Pancholi on 2019-06-11.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Pradhumna Pancholi")
            .font(.title)
            .color(.gray)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
