//
//  ProgramRow.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/19/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct ProgramRow: View {

    let program: Program

    var body: some View {
        HStack {
            Text(program.name)
                .font(.body)
            Spacer()
            Text("\(program.timeInMinutes) мин")
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
        return ProgramRow(program: .demo)
    }
}
