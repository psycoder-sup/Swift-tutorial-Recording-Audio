//
//  HistoryView.swift
//  Tutorial-Recording Audio
//
//  Created by 박상욱 on 11/28/23.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style:.date))
        .padding()
    }
}
extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees.map {$0.name})
    }
}



#Preview {
    
    HistoryView(
        history: History(
            attendees: [
                DailyScrum.Attendee(name:"John"),
                DailyScrum.Attendee(name: "Darla"),
                DailyScrum.Attendee(name: "Luis")
            ],
            transcript: "Darla, would you like to start today? "
                        )
    )
}
