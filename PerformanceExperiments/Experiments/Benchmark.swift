//
//  Benchmark.swift
//  PerformanceExperiments
//
//  Created by Akihiro Kokubo on 2023/08/30.
//

import Foundation

class Benchmark {
    private let startTime: Date
    private let size: Int
    
    init(size: Int) {
        self.startTime = Date()
        self.size = size
    }
    
    private func finish() -> Double {
        let elapsedTime = Date().timeIntervalSince(self.startTime) as Double
        let formatedElapsedTime = String(format: "%.12f", elapsedTime)
        let formatedSize = String(format: "% 9d", size)
        print("Size: \(formatedSize), Elasped time: \(formatedElapsedTime)(s)")
        
        return elapsedTime
    }
    
    static func measure(size: Int, block: () -> ()) -> Double {
        let benchmark = Benchmark(size: size)
        block()
        let elapsedTime = benchmark.finish()
        
        return elapsedTime
    }
}
