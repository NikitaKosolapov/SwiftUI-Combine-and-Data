//
//  ModelData.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 17.03.2024.
//

import SwiftUI

func load<T: Decodable>(_ filename: String) -> T {
    guard let url = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    let data: Data
    
    do {
        data = try Data(contentsOf: url)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
