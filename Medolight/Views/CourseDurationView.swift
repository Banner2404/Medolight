//
//  CourseDurationView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/30/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct CourseDurationView: View {

    @ObservedObject var duration: IntervalTime

    var body: some View {
        let binding = Binding(
            get: { self.duration.value - 1 },
            set: { self.duration.value = $0 + 1 })
        return HStack {
            Picker("Еденицы", selection: $duration.unit) {
                Text("День").tag(IntervalTime.Unit.day)
                Text("Месяц").tag(IntervalTime.Unit.month)
            }.pickerStyle(SegmentedPickerStyle())
            Picker("Количество", selection: binding) {
                ForEach(1..<30) {
                    Text("\($0)")
                }
            }
                .labelsHidden()
                .pickerStyle(WheelPickerStyle())
                .frame(width: 50, height: 50)
                .clipped()
        }
    }
}

struct CourseDurationView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDurationView(duration: .demo)
    }
}
