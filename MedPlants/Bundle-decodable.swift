//
//  Bundle-decodable.swift
//  MedPlants
//
//  Created by noje on 30/01/2022.
//

import Foundation
import SwiftUI

extension Bundle {
    func decode<T: Decodable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from Bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to load /(file) from bundle.")
        }
        
        return loaded
    }
}
