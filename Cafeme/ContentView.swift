//
//  ContentView.swift
//  Cafeme
//
//  Created by Alex Strugacz on 11/13/22.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = MapViewModel()
    
    
    var body: some View {
        
        VStack {
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .ignoresSafeArea()
                .accentColor(Color(.systemPink))
                .onAppear {
                    viewModel.checkIfLocationServicesIsEnabled()
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


