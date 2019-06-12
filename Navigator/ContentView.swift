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
        VStack{
            //MapView//
            MapView()
                .frame(height: 300)
                //to avoid safe are on top//
                .edgesIgnoringSafeArea(.top)
            //for image//
            CircleImgView()
                .offset(y: -150)
                .padding(.bottom, -150)
            //for verticle stack//
            //name of place//
            VStack(alignment: .leading){
                Text("Niagara Falls")
                    .font(.title)
                    .color(.black)
                    //for horizontal stack//
                    HStack {
                        //for state//
                        Text("Niagara")
                            .font(.subheadline)
                            .color(.gray)
                        //for province//ss
                        Text("Ontario")
                            .font(.subheadline)
                            .color(.gray)
                    }
            }
        //to give padding//
        .padding()
        //to push content at top//
        Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
