//
//  ListDetailView.swift
//  GPSView
//
//  Created by Uche Ojiaku on 2/23/24.
//

import SwiftUI

struct DetailView: View {
    var y: Ebe

    var body: some View {
        ScrollView {
            MapView(there: y.Location)
                .frame(height: 300)
            
            CircleImage(a: y.image)
                .offset(y: -160)
                .padding(.bottom, -120)
            
            VStack(alignment: .leading) {
                Text(y.otherName)
                    .font(.title)
                HStack {
                    Text(y.community)
                    Spacer()
                    Text(y.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
//                Text("Learn More")
                    .font(.title2)
                Text(y.description)

            }
            .padding([.leading, .trailing], 10)
            Spacer()
            
        }
    }
}

#Preview {
    DetailView(y: info[2])
}


