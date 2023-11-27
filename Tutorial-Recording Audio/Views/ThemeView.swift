//
//  ThemeView.swift
//  Tutorial-Recording Audio
//
//  Created by 박상욱 on 11/27/23.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius:4))
    }
}

#Preview {
    ThemeView(theme: .bubblegum)
}
