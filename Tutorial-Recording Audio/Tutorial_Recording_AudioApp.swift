//
//  Tutorial_Recording_AudioApp.swift
//  Tutorial-Recording Audio
//
//  Created by 박상욱 on 11/27/23.
//

import SwiftUI

@main
struct Tutorial_Recording_AudioApp: App {
    @StateObject private var store = ScrumStore()
    @State private var errorWrapper: ErrorWrapper?
    
        var body: some Scene {
        WindowGroup {
//            ContentView()
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        errorWrapper = ErrorWrapper(
                            error: error,
                            guidance: "Try again later"
                        )
                    }
                }
            }
                .task {
                    do {
                        try await store.load()
                    } catch {
                        errorWrapper = ErrorWrapper(
                            error: error,
                            guidance: "Scrumdigner will load sample data"
                        )
                    }
                }
                .sheet(item: $errorWrapper) {
                    store.scrums = DailyScrum.sampleData
                } content: { wrapper in
                    ErrorView(errorWrapper: wrapper)
                }
        }

        
    }
}
