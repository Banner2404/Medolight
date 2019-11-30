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
                    Text("Проограммы")
                    Image(systemName: "list.bullet")
            }
            FavouritesView()
                .tabItem {
                    Text("Избранное")
                    Image(systemName: "star")
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
