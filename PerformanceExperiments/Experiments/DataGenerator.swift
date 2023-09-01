//
//  DataGenerator.swift
//  PerformanceExperiments
//
//  Created by Akihiro Kokubo on 2023/08/30.
//

import Foundation

struct DataGenerator {
    static func makeAllAppleEmojis(length: Int) -> [String] {
        let emojis = Array(0 ..< length)
            .map { _ in "🍎" }
        return emojis
    }
    
    static func makeAllLemonEmojis(length: Int) -> [String] {
        let emojis = Array(0 ..< length)
            .map { _ in "🍋" }
        return emojis
    }
    
    static func makeLemonAndAppleEmojis(length: Int) -> [String] {
        let emojis = makeAllLemonEmojis(length: length / 2) + makeAllAppleEmojis(length: length / 2)
        return emojis
    }
    
    static func makeAppleAndLemonEmojis(length: Int) -> [String] {
        let emojis = makeAllAppleEmojis(length: length / 2) + makeAllLemonEmojis(length: length / 2)
        return emojis
    }
    
    static func makeString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0 ..< length).map { _ in letters.randomElement() ?? "a" })
    }
    
    static func makeNumbersInAscendingOrder(length: Int) -> [Int] {
        let numbers = Array(0 ..< length)
        return numbers
    }
    
    static func makeNumbersInDescendingOrder(length: Int) -> [Int] {
        let numbers = Array(0 ..< length).sorted { $0 > $1 }
        return numbers
    }
    
    static func makeNumbersAtRandom(length: Int) -> [Int] {
        let numbers = Array(0 ..< length).shuffled()
        return numbers
    }
}
