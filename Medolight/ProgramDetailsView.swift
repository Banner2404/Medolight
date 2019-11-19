//
//  ProgramDetailsView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/19/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct ProgramDetailsView: View {

    let program: Program

    var body: some View {
        VStack(alignment: .leading) {
            Text(program.name)
                .padding()
                .font(.headline)
            Text(program.details)
                .padding()
                .font(.subheadline)
            Spacer()
            ProgramControlsView(program: program)
        }
        .navigationBarTitle(Text("Метод лечения"), displayMode: .inline)
    }
}

struct ProgramDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProgramDetailsView(program: .demo)
        }
    }
}
