//
//  ContentView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/19/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProgramsView()
                .tabItem {
                    Text("444")
                    Image(systemName: "list.bullet")
            }
            Text("123")
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
