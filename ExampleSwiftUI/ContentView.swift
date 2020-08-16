//
//  ContentView.swift
//  ExampleSwiftUI
//
//  Created by Tolga İskender on 15.08.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("background").resizable().scaledToFill().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            Image("man").resizable().frame(width: 40, height: 40).padding(.top,20).padding()
            LoginUI()
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
