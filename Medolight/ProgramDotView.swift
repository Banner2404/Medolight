//
//  ProgramDotView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/19/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct ProgramDotView: View {

    let index: Int
    let style: Style

    var body: some View {
        HStack {
            ForEach(0..<5, id: \.self) { item in
                Circle()
                    .foregroundColor(self.color(for: item))
                    .frame(width: 20, height: 20)
            }
        }
    }

    func color(for item: Int) -> Color {
        switch style {
        case .dot:
            return item == index ? .green : .gray
        case .filled:
            return item <= index ? .green : .gray
        }
    }

    enum Style {
        case filled
        case dot
    }
}

struct ProgramDotView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramDotView(index: 4, style: .dot)
    }
}
