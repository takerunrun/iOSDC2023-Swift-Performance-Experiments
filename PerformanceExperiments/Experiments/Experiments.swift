//
//  Experiments.swift
//  PerformanceExperiments
//
//  Created by Akihiro Kokubo on 2023/08/30.
//

import Foundation

enum Experiments {
    
    static func run<T>(
        dataGenerator: (_ length: Int) -> T,
        badCaseBlock: (T) -> (),
        goodCaseBlock: (T) -> ()
    ) {
        print("---- Bad ----")
        for i in (0 ..< 8) {
            let length: Int = Int(pow(Double(10), Double(i)))
            let array = dataGenerator(length)
            badCaseBlock(array)
        }
        print("---- Good ----")
        for i in (0 ..< 8) {
            let length: Int = Int(pow(Double(10), Double(i)))
            let array = dataGenerator(length)
            goodCaseBlock(array)
        }
        print("\n")
    }
    
    // MARK: ケース1 - コレクション内の条件に合う最初のオブジェクトの取得
    enum case1 {
        static func run() {
            print(
                """
                //===----------------------------------------------------------------------===//
                // ケース1 - コレクション内の条件に合う最初のオブジェクトの取得
                //===----------------------------------------------------------------------===//
                
                ====
                // 状況：先頭のりんごがほしい
                let emojis = ["🍋", "🍋", "🍎", "🍎"]
                
                // Bad
                let firstApple = emojis.filter { $0 == "🍎" }.first
                
                // Good
                let firstApple = emojis.first(where: { $0 == "🍎" })
                ====
                
                """
            )
            
            print("コレクションの要素が全部りんごの場合：[🍎, 🍎, 🍎, 🍎]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeAllAppleEmojis(length: $0) },
                badCaseBlock: { measureWithFilterFirst(emojis: $0) },
                goodCaseBlock: { measureWithFirstWhere(emojis: $0) }
            )
            
            print("コレクションの要素が全部レモンの場合：[🍋, 🍋, 🍋, 🍋]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeAllLemonEmojis(length: $0) },
                badCaseBlock: { measureWithFilterFirst(emojis: $0) },
                goodCaseBlock: { measureWithFirstWhere(emojis: $0) }
            )
            
            print("コレクションの要素が前半レモン、後半りんごの場合：[🍋, 🍋, 🍎, 🍎]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeLemonAndAppleEmojis(length: $0) },
                badCaseBlock: { measureWithFilterFirst(emojis: $0) },
                goodCaseBlock: { measureWithFirstWhere(emojis: $0) }
            )
        }
        
        // Bad
        static func measureWithFilterFirst(emojis: [String]) {
            Benchmark.measure(size: emojis.count, block: {
                _ = emojis.filter { $0 == "🍎" }.first
                return
            })
        }
        
        // Good
        static func measureWithFirstWhere(emojis: [String]) {
            Benchmark.measure(size: emojis.count, block: {
                _ = emojis.first(where: { $0 == "🍎" })
                return
            })
        }
    }
    
    // MARK: ケース2 - コレクション内のオブジェクトの存在確認
    enum case2 {
        static func run() {
            print(
                """
                //===----------------------------------------------------------------------===//
                // ケース2 - コレクション内のオブジェクトの存在確認
                //===----------------------------------------------------------------------===//
                
                ====
                // 状況：りんごが含まれるかどうか、知りたい
                let emojis = ["🍋", "🍋", "🍎", "🍎"]
                
                //Bad
                let containsApple = !emojis.filter { $0 == "🍎" }.isEmpty
                
                //Good
                let containsApple = emojis.contains("🍎")
                ====
                
                """
            )
            
            print("コレクションの要素が全部りんごの場合：[🍎, 🍎, 🍎, 🍎]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeAllAppleEmojis(length: $0) },
                badCaseBlock: { measureWithFilterIsEmpty(emojis: $0) },
                goodCaseBlock: { measureWithContains(emojis: $0) }
            )
            
            print("コレクションの要素が全部レモンの場合：[🍋, 🍋, 🍋, 🍋]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeAllLemonEmojis(length: $0) },
                badCaseBlock: { measureWithFilterIsEmpty(emojis: $0) },
                goodCaseBlock: { measureWithContains(emojis: $0) }
            )
            
            print("コレクションの要素が前半レモン、後半りんごの場合：[🍋, 🍋, 🍎, 🍎]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeLemonAndAppleEmojis(length: $0) },
                badCaseBlock: { measureWithFilterIsEmpty(emojis: $0) },
                goodCaseBlock: { measureWithContains(emojis: $0) }
            )
        }
        
        // Bad
        static func measureWithFilterIsEmpty(emojis: [String]) {
            Benchmark.measure(size: emojis.count, block: {
                _ = !emojis.filter { $0 == "🍎" }.isEmpty
                return
            })
        }
        
        // Good
        static func measureWithContains(emojis: [String]) {
            Benchmark.measure(size: emojis.count, block: {
                _ = emojis.contains("🍎")
                return
            })
        }
    }
    
    // MARK: ケース3 - コレクション内の全てのオブジェクトが条件を満たすことの確認
    enum case3 {
        static func run() {
            print(
                """
                //===----------------------------------------------------------------------===//
                // ケース3 - コレクション内の全てのオブジェクトが条件を満たすことの確認
                //===----------------------------------------------------------------------===//
                
                ====
                // 状況：全部りんごかどうか知りたい
                let emojis = ["🍎", "🍎", "🍎"]
                
                //Bad
                let isAllApple = emojis.filter { $0 != "🍎" }.isEmpty
                
                //Good
                let isAllApple = emojis.allSatisfy { $0 == "🍎" }
                ====
                
                """
            )
            
            print("コレクションの要素が全部りんごの場合：[🍎, 🍎, 🍎, 🍎]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeAllAppleEmojis(length: $0) },
                badCaseBlock: { measureWithFilterIsEmpty(emojis: $0) },
                goodCaseBlock: { measureWithAllSatisfy(emojis: $0) }
            )
            
            print("コレクションの要素が全部レモンの場合：[🍋, 🍋, 🍋, 🍋]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeAllLemonEmojis(length: $0) },
                badCaseBlock: { measureWithFilterIsEmpty(emojis: $0) },
                goodCaseBlock: { measureWithAllSatisfy(emojis: $0) }
            )
            
            print("コレクションの要素が前半りんご、後半レモンの場合：[🍎, 🍎, 🍋, 🍋]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeAppleAndLemonEmojis(length: $0) },
                badCaseBlock: { measureWithFilterIsEmpty(emojis: $0) },
                goodCaseBlock: { measureWithAllSatisfy(emojis: $0) }
            )
        }
        
        // Bad
        static func measureWithFilterIsEmpty(emojis: [String]) {
            Benchmark.measure(size: emojis.count, block: {
                _ = emojis.filter { $0 != "🍎" }.isEmpty
                return
            })
        }
        
        // Good
        static func measureWithAllSatisfy(emojis: [String]) {
            Benchmark.measure(size: emojis.count, block: {
                _ = emojis.allSatisfy { $0 == "🍎" }
                return
            })
        }
    }
    
    // MARK: ケース4 - コレクション内の最小のオブジェクトの取得
    enum case4 {
        static func run() {
            print(
                """
                //===----------------------------------------------------------------------===//
                // ケース4 - コレクション内の最小のオブジェクトの取得
                //===----------------------------------------------------------------------===//
                
                ====
                // 状況：最小の数字を知りたい
                let numbers = [0, 1, 2, 3]
                
                //Bad
                let minNumber = numbers.sorted().first
                
                //Good
                let minNumber = numbers.min()
                ====
                
                """
            )
            
            print("コレクションの要素が0から昇順の場合：[0, 1, 2, 3]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeNumbers(length: $0) },
                badCaseBlock: { measureWithSortedFirst(numbers: $0) },
                goodCaseBlock: { measureWithMin(numbers: $0) }
            )
        }
        
        // Bad
        static func measureWithSortedFirst(numbers: [Int]) {
            Benchmark.measure(size: numbers.count, block: {
                _ = numbers.sorted().first
                return
            })
        }
        
        // Good
        static func measureWithMin(numbers: [Int]) {
            Benchmark.measure(size: numbers.count, block: {
                _ = numbers.min()
                return
            })
        }
    }
    
    // MARK: ケース5 - コレクションが空かどうかの確認
    enum case5 {
        static func run() {
            print(
                """
                //===----------------------------------------------------------------------===//
                // ケース5 - コレクションが空かどうかの確認
                //===----------------------------------------------------------------------===//
                
                ====
                // 状況：コレクションが空かどうか、知りたい
                let emojis = ["🍎", "🍎", "🍎"]
                
                //Bad
                let isEmpty = emojis.count == 0
                
                //Good
                let isEmpty = emojis.isEmpty
                ====
                
                """
            )
            
            print("コレクションの要素が全部りんごの場合：[🍎, 🍎, 🍎, 🍎]")
            Experiments.run(
                dataGenerator: { DataGenerator.makeAllAppleEmojis(length: $0) },
                badCaseBlock: { measureWithCount(emojis: $0) },
                goodCaseBlock: { measureWithIsEmpty(emojis: $0) }
            )
        }
        
        // Bad
        static func measureWithCount(emojis: [String]) {
            Benchmark.measure(size: emojis.count, block: {
                _ = emojis.count == 0
                return
            })
        }
        
        // Good
        static func measureWithIsEmpty(emojis: [String]) {
            Benchmark.measure(size: emojis.count, block: {
                _ = emojis.isEmpty
                return
            })
        }
    }
    
    // MARK: ケース6 - 文字列が空文字かどうかの確認
    enum case6 {
        static func run() {
            print(
                """
                //===----------------------------------------------------------------------===//
                // ケース6 - 文字列が空文字かどうかの確認
                //===----------------------------------------------------------------------===//
                
                ====
                // 状況：文字列が空かどうか、知りたい
                let string = "iOSDC"
                
                //Bad
                let isEmpty = string.count == 0
                
                //Good
                let isEmpty = string.isEmpty
                ====
                
                """
            )
            
            print("ランダムな文字列の場合：iOSDC")
            Experiments.run(
                dataGenerator: { DataGenerator.makeString(length: $0) },
                badCaseBlock: { measureWithCount(string: $0) },
                goodCaseBlock: { measureWithIsEmpty(string: $0) }
            )
        }
        
        // Bad
        static func measureWithCount(string: String) {
            Benchmark.measure(size: string.count, block: {
                _ = string.count == 0
                return
            })
        }
        
        // Good
        static func measureWithIsEmpty(string: String) {
            Benchmark.measure(size: string.count, block: {
                _ = string.isEmpty
                return
            })
        }
    }
}
