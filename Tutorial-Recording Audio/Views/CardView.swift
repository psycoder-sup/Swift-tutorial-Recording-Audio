//
//  CardView.swift
//  Tutorial-Recording Audio
//
//  Created by 박상욱 on 11/27/23.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
    }
}


var scrum = DailyScrum.sampleData[0]
#Preview {
    CardView(scrum: scrum)
        .background(scrum.theme.mainColor)
        .previewLayout(.fixed(width: 400, height: 60))
}
