//
//  NetworkStateDemoApp.swift
//  NetworkStateDemo
//
//  Created by Alex Nagy on 20.01.2021.
//

import SwiftUI
import NetworkState

@main
struct NetworkStateDemoApp: App {
    
    let networkState = NetworkState()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(networkState)
        }
    }
}
