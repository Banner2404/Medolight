//
//  ProgramsView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/19/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI
let url = Bundle.main.url(forResource: "data", withExtension: "json")!
let data = try! Data(contentsOf: url)
//let objects = try! JSONDecoder().decode([Program].self, from: data)
let objects = [Program.demo]

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
