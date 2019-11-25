//
//  ProgramControlsView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/19/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct ProgramControlsView: View {

    let program: Program

    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("Время")
                    .font(.headline)
                Spacer()
                ProgramDotView(index: 3, style: .filled)
            }
            HStack {
                Text("Режим")
                    .font(.headline)
                Spacer()
                ProgramDotView(index: program.mode, style: .dot)
            }
            HStack {
                Text("Сеансы")
                    .font(.headline)

                Spacer()
                Text(program.therapy.first?.session.string ?? "")
                    .font(.headline)
            }
            HStack {
                Text("Длительность")
                    .font(.headline)
                Spacer()
                Text(program.therapy.first?.interval.string ?? "")
                    .font(.headline)
            }
            HStack {
                Button(action: {}) {
                    Text("Начать лечение")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "heart.fill")
                        .font(.system(size: 40))
                        .foregroundColor(.red)
                }
            }
            .padding(.top, 30)
        }
        .padding()
        .padding(.top, 20)
        .background(Color.blue.opacity(0.3))
        .cornerRadius(20)
    }
}

struct ProgramControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramControlsView(program: .demo)
    }
}
