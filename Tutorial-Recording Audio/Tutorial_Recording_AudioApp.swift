//
//  Tutorial_Recording_AudioApp.swift
//  Tutorial-Recording Audio
//
//  Created by 박상욱 on 11/27/23.
//

import SwiftUI

@main
struct Tutorial_Recording_AudioApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
//            ContentView()
            ScrumsView(scrums: $scrums)
        }

        
    }
}
