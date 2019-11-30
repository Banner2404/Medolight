//
//  ProgramsView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/19/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct ProgramsView: View {

    @Environment(\.managedObjectContext) var managedObjectContext

    @FetchRequest(entity: Program.entity(),
                  sortDescriptors: []) var programs: FetchedResults<Program>

    var body: some View {
        NavigationView {
            List(programs, id: \.name) { program in
                NavigationLink(destination: ProgramDetailsView(program: program)) {
                    ProgramRow(program: program)
                }
            }
            .navigationBarTitle("Программы")
        }
    }
}

struct ProgramsView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramsView()
    }
}
