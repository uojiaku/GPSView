//
//  RowView.swift
//  GPSView
//
//  Created by Uche Ojiaku on 2/21/24.
//

import SwiftUI

struct RowView: View {
    
    var z: Ebe
    var body: some View {
        
        HStack{
            z.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(z.name)
                .font(.system(size: 30, weight: .light, design: .default))
            
            Spacer()
            
            if z.isFav {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
            
        }
    }
}

#Preview { 
    // RowView(z: EbeData().info[0])

    let k = EbeData().info
    return Group {
        RowView(z: k[0])
        RowView(z: k[1])
    }
}
