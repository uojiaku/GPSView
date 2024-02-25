//
//  ListView.swift
//  GPSView
//
//  Created by Uche Ojiaku on 2/21/24.
//

import SwiftUI


struct ListView: View {
    
    var body: some View {
        NavigationSplitView {
            List(info){ i in
                NavigationLink {
                    DetailView(y: i)
                } label: {
                    RowView(z: i)
                        .fixedSize()
                }
            } 
            .navigationTitle("Igbo Markets 2074")
        } detail: {
                Text("Select a Market")
            }

         }
    }




#Preview {
    ListView()
}
