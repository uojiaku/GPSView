//
//  ContentView.swift
//  GPSView
//
//  Created by Uche Ojiaku on 2/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Nkwo Market")
                    .font(.title)
                HStack {
                    Text("Umundugba")
                    Spacer()
                    Text("Imo State, Nigeria")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                Text("Learn More")
                    .font(.title2)
                Text("Ahịa Nkwo dị ndị igbo mkpa. \nỌ malitere site na ndị nna nna ha ma na-aga n'ihu.")

            }
            .padding()
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}

