//
//  CircleImage.swift
//  GPSView
//
//  Created by Uche Ojiaku on 2/16/24.
//

import SwiftUI

struct CircleImage: View {
    var a: Image
    var body: some View {
//        Image("streets")
        a
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(a: Image("paradise"))
//    CircleImage()
}
