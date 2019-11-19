//
//  ProgramsView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/19/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

let data = [
    Program(name: "Ослабленный иммунитет", mode: 1, time: 5, details: ""),
    Program(name: "Предгриппозное состояние", mode: 1, time: 10, details: ""),
    Program(name: "Состояние стресса", mode: 1, time: 10, details: ""),
    Program(name: "Спортивные перегрузки", mode: 3, time: 5, details: ""),
    Program(name: "Боль в области конечностей", mode: 3, time: 5, details: ""),
    Program(name: "Головная боль", mode: 3, time: 5, details: ""),
    Program(name: "Ишиас", mode: 5, time: 5, details: ""),
]


struct ProgramsView: View {
    var body: some View {
        NavigationView {
            List(data, id: \.name) { program in
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
