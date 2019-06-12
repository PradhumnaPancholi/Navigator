//
//  CircleImgView.swift
//  Navigator
//
//  Created by Pradhumna Pancholi on 2019-06-11.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import SwiftUI

struct CircleImgView : View {
    var body: some View {
        Image("niagarafalls")
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white)
        )
        .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImgView_Previews : PreviewProvider {
    static var previews: some View {
        CircleImgView()
    }
}
#endif
