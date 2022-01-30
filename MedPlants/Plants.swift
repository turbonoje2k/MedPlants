//
//  Plants.swift
//  MedPlants
//
//  Created by noje on 30/01/2022.
//

import Foundation

struct Plants: Codable, Identifiable {
    let id: String
    let name: String
    let Property: String
    
    static let allPlants: [Plants] = Bundle.main.decode("plants.json")
    static let exemple = allPlants[0]
}
