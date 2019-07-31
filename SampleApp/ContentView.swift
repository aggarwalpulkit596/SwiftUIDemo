//
//  ContentView.swift
//  SampleApp
//
//  Created by Pulkit Aggarwal on 31/07/19.
//  Copyright © 2019 Pulkit Aggarwal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
        Text("Hello World")
            .font(.title)
            .accentColor(.red)
            HStack{
                Text("This is the first subtitle")
                //Create a Space Between Views also makes the view use full width or height of device
                Spacer()
                Text("This is the second subtitle")

            }
        }.padding()
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
