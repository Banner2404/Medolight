//
//  RoundedTopShape.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/30/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct RoundedTopShape: Shape {

    let radius: Double

    func path(in rect: CGRect) -> Path {
        let size = CGSize(width: radius, height: radius)
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: size)
        return Path(path.cgPath)
    }
}

struct RoundedTop_Previews: PreviewProvider {
    static var previews: some View {
        Text("Test")
            .background(RoundedTopShape(radius: 10))
    }
}
