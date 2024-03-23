//
//  ListView.swift
//  GPSView
//
//  Created by Uche Ojiaku on 2/21/24.
//

import SwiftUI


struct ListView: View {
    @State private var showFavOnly = false
    
    var filteredEbe: [Ebe] {
        info.filter {
            i in (!showFavOnly || i.isFav)
            //  show entirelist or favorites
        }
    }
    
    var body: some View {
        
        NavigationSplitView {
//            List(info){ i in
            /*List*/
            
            List {
                Toggle(isOn: $showFavOnly, label: { // add state var to toggle
                    Text("Show Favs")
                })
                ForEach(filteredEbe){ i in
                    NavigationLink {
                        DetailView(y: i)
                    } label: {
                        RowView(z: i)
                            .fixedSize()
                    }
                }
            }
            .animation(.default, value: filteredEbe) // creates filtered animation
            .navigationTitle("Igbo Markets 2074")
        } detail: {
                Text("Select a Market")
            }
         }
    }




#Preview {
    ListView()
}
