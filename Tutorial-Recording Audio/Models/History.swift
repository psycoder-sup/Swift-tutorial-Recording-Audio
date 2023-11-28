//
//  History.swift
//  Tutorial-Recording Audio
//
//  Created by 박상욱 on 11/28/23.
//

import Foundation


struct History: Identifiable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    
    init(id: UUID = UUID(), date: Date = Date(), attendees: [DailyScrum.Attendee]) {
        self.id = id
        self.date = date
        self.attendees = attendees
    }
}
