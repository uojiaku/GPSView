//
//  FavButton.swift
//  GPSView
//
//  Created by Uche Ojiaku on 3/8/24.
//

import SwiftUI

struct FavButton: View {
    @Binding var isOn: Bool
    var body: some View {
        
        Button {
            isOn.toggle()
        } label: {
            Label("ToggleButton", systemImage: isOn ? "star.fill": "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isOn ? .yellow : .gray)
        }
    }
}

#Preview {
    FavButton(isOn: .constant(true))
}
