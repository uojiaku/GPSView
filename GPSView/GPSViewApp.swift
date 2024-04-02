//
//  GPSViewApp.swift
//  GPSView
//
//  Created by Uche Ojiaku on 2/16/24.
//

import SwiftUI

@main
struct GPSViewApp: App {
    @State private var ebeData = EbeData() // initializes state in app only once during the lifetime of the app
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ebeData)   // appy the state private variable
        }
    }
}
