//
//  ContentView.swift
//  NetworkStateDemo
//
//  Created by Alex Nagy on 20.01.2021.
//

import SwiftUI
import NetworkState

struct ContentView: View {
    
    @EnvironmentObject var networkState: NetworkState
    
    @State var isOnline = false
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: networkState.isOnline ? "wifi" : "wifi.slash").font(.largeTitle)
            
            Button(action: {
                if let isConnected = networkState.isConnected(), isConnected {
                    isOnline = isConnected
                } else {
                    isOnline = false
                }
            }, label: {
                Text("Refresh manually")
            })
            
            if isOnline {
                Text("Showing this text only after we tapped the Button and if network is Connected")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
