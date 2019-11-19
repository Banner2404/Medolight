//
//  ProgramRow.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/19/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct Program {

    let name: String
    let mode: Int
    let time: Int
    let details: String

    static var demo: Program {
        return Program(name: "Спортивные перегрузки", mode: 4, time: 15, details: "Межбровье, между 1-м и 2-м пальцами кисти справа и слева, центр грудины, поясница, верхне-наружная часть голени (в сочетании с массажем, антиоксидантами)")
    }
}

struct ProgramRow: View {

    let program: Program

    var body: some View {
        HStack {
            Text(program.name)
                .font(.body)
            Spacer()
            Text("\(program.time) мин")
                .foregroundColor(.blue)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.blue, lineWidth: 1)
                )
            Text(String(program.mode))
                .foregroundColor(.red)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.red, lineWidth: 1)
                )
        }
    }
}

struct ProgramRow_Previews: PreviewProvider {
    static var previews: some View {
        ProgramRow(program: .demo)
    }
}
