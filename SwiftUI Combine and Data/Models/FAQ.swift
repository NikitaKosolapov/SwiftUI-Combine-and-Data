//
//  FAQ.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 17.03.2024.
//

import SwiftUI

struct FAQ: Decodable, Identifiable {
    let id: Int
    let question: String
    let answer: String
}

let faqData: [FAQ] = load("FAQdata.json")
