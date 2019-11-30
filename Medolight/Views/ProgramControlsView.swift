//
//  ProgramControlsView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/19/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct ProgramControlsView: View {

    @ObservedObject var program: Program

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
                NavigationLink(destination: CourseView(course: .demo)) {
                    Text("Начать лечение")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Spacer()
                Button(action: toggleFavourite) {
                    Image(systemName: program.isFavourite ? "heart.fill" : "heart")
                        .font(.system(size: 40))
                        .foregroundColor(.red)
                }
            }
            .padding(.top, 30)
        }
        .padding()
        .padding(.top, 20)
        .background(RoundedTopShape(radius: 20).fill(Color.blue.opacity(0.2)))
    }

    func toggleFavourite() {
        program.isFavourite.toggle()
        AppDelegate.shared.database.saveContext()
    }
}

struct ProgramControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramControlsView(program: .demo)
    }
}
