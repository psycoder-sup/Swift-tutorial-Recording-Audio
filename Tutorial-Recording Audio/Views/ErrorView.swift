//
//  ErrorView.swift
//  Tutorial-Recording Audio
//
//  Created by 박상욱 on 11/28/23.


import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
             VStack {
                Text("An error has occured!")
                    .font(.title)
                    .padding(.bottom)
                Text(errorWrapper.error.localizedDescription)
                    .font(.headline)
                Text(errorWrapper.guidance)
                    .font(.caption)
                    .padding(.top)
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss") {
                        dismiss()
                    }
                }
            }
   
        }
    }
}

enum SampleError: Error {
    case errorRequired
}
var wrapper: ErrorWrapper {
    ErrorWrapper(
        error: SampleError.errorRequired,
        guidance: "You can safely ignore this error"
    )
}

#Preview {
    ErrorView(errorWrapper: wrapper)
}
