//
//  CourseView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/30/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct CourseView: View {

    @State private var showPicker = false
    @ObservedObject var course: Course
    @ObservedObject var duration: IntervalTime

    init(course: Course) {
        self.course = course
        self.duration = course.duration
    }
    var body: some View {
        Form {
            DatePicker(selection: $course.startDate, displayedComponents: .date) {
                Text("Начало")
            }
            Button(action: { withAnimation { self.showPicker.toggle() } }) {
                HStack {
                    Text("Курс лечения")
                    Spacer()
                    Text(duration.string)
                        .opacity(0.5)
                }
            }.buttonStyle(PlainButtonStyle())
            if showPicker {
                CourseDurationView(duration: duration)
            }
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(course: .demo)
    }
}
