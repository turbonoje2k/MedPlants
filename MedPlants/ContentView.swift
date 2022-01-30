//
//  ContentView.swift
//  MedPlants
//
//  Created by noje on 30/01/2022.
//

import SwiftUI

struct ContentView: View {
    let plants: [Plants] = Bundle.main.decode("plants.json")
    
    var body: some View {
        NavigationView {
            List(plants) { plants in
                NavigationLink {
                    Text(plants.name)
                } label: {
                    Image(systemName: "leaf")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 25)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .overlay(RoundedRectangle(cornerRadius: 5)
                                    .stroke(.black, lineWidth: 1)
                        )
                    VStack(alignment: .leading) {
                        Text(plants.name)
                            .font(.headline)
                        Text("\(plants.property)")
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle("Plants")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
