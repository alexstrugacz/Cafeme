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
        
            NavigationView() {
                
                Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                    .padding()
                        .accentColor(Color(.systemPink))
                        .onAppear {
                            viewModel.checkIfLocationServicesIsEnabled()
                        }
                        .cornerRadius(65)
                    .navigationTitle(Text("Map"))
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}


