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
    @State private var username = ""
    
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
                    .navigationTitle(Text("Cafeme"))
            }
            
            
            Spacer()
            
            TextField("Enter a specific cafe name...", text: $username)
                .scenePadding()
                .frame(width: 300, height: 100, alignment: .center)
                .background(.thickMaterial)
                .cornerRadius(60)
                .multilineTextAlignment(.center)
            
            Button("Submit Order", action: {
                //code
            })
            .frame(width: 300, height: 70, alignment: .center)
            .background(Color.green)
            .fontWeight(.black)
            .foregroundColor(.white)
            .cornerRadius(20)
            .padding(.top)
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}


