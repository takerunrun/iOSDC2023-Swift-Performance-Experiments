# iOSDC2023-Swift-Performance-Experiments

## 概要
このリポジトリは、iOSDC Japan 2023のルーキーズLT「[Swiftコードのパフォーマンス悪化 - 6つのケースでの実験結果を報告](https://fortee.jp/iosdc-japan-2023/proposal/4b6f4748-7232-474a-800d-fbb09dbeba78)」で実験に用いたリポジトリです！

## 検証の仕方

#### アプリをビルドしてください。実験が行われます！

```swift
/// PerformanceExperiments/ViewController.swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        /// 各計測に関して、複数回実行し平均を求める場合は、以下の行をコメントアウトする
        /// Experiments.typeのデフォルト値は .onlyOnce（各計測に関して、1回だけ行う）
        // Experiments.type = .multipleTimes
        Experiments.runAll()
    }
}
```

#### `Experiments.type`

- `onlyOnce` を選ぶと、各計測の関して1回だけ実行されます。
- `multipleTimes` を選ぶと、各計測に関して10回実行され平均値が計算されます。

```swift
extension Experiments {
    enum ExperimentType {
        // 各計測に関して、1回だけ行う
        case onlyOnce
        
        // 各計測に関して、10回行い、平均を取る
        case multipleTimes
    }
}
```


## 実験結果
以下は、`Experiments.type` を `.multipleTimes` にして、出力された実験結果から一部を抜粋

### 実験環境
- MacBook Pro 13-inch, M1, 2020
- macOS 13.3.1
- iPhone 14 Simulator
- iOS 16.4



### ケース1 - コレクション内の条件に合う最初のオブジェクトの取得

```
//===----------------------------------------------------------------------===//
// ケース1 - コレクション内の条件に合う最初のオブジェクトの取得
//===----------------------------------------------------------------------===//

====
// 状況：先頭のリンゴがほしい
let emojis = ["🍋", "🍋", "🍎", "🍎"]

// Bad
let firstApple = emojis.filter { $0 == "🍎" }.first

// Good
let firstApple = emojis.first(where: { $0 == "🍎" })
====

コレクションの要素が全部リンゴの場合：[🍎, 🍎, 🍎, 🍎]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000001299381 | 0.000000298023 |         4.36 |
       10 | 0.000001895428 | 0.000000202656 |         9.35 |
      100 | 0.000010406971 | 0.000000393391 |        26.45 |
     1000 | 0.000197303295 | 0.000000202656 |       973.59 |
    10000 | 0.000945782661 | 0.000000309944 |      3051.46 |
   100000 | 0.009213793278 | 0.000000393391 |     23421.48 |
  1000000 | 0.086218631268 | 0.000000298023 |    289301.72 |
 10000000 | 0.839765405655 | 0.000000286102 |   2935192.83 |


コレクションの要素が全部レモンの場合：[🍋, 🍋, 🍋, 🍋]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000000607967 | 0.000000298023 |         2.04 |
       10 | 0.000001025200 | 0.000000810623 |         1.26 |
      100 | 0.000008177757 | 0.000008094311 |         1.01 |
     1000 | 0.000080502033 | 0.000079989433 |         1.01 |
    10000 | 0.000800991058 | 0.000802183151 |         1.00 |
   100000 | 0.007992792130 | 0.007992196083 |         1.00 |
  1000000 | 0.080253398418 | 0.080089890957 |         1.00 |
 10000000 | 0.803961229324 | 0.799888205528 |         1.01 |


コレクションの要素が前半レモン、後半リンゴの場合：[🍋, 🍋, 🍎, 🍎]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000000214577 | 0.000000107288 |         2.00 |
       10 | 0.000001513958 | 0.000000894070 |         1.69 |
      100 | 0.000009012222 | 0.000004184246 |         2.15 |
     1000 | 0.000080192089 | 0.000040054321 |         2.00 |
    10000 | 0.000808167458 | 0.000403213501 |         2.00 |
   100000 | 0.008119797707 | 0.003996479511 |         2.03 |
  1000000 | 0.081247115135 | 0.040334904194 |         2.01 |
 10000000 | 0.814134991169 | 0.401750600338 |         2.03 |
```

### ケース2 - コレクション内のオブジェクトの存在確認

```
//===----------------------------------------------------------------------===//
// ケース2 - コレクション内のオブジェクトの存在確認
//===----------------------------------------------------------------------===//

====
// 状況：リンゴが含まれるかどうか、知りたい
let emojis = ["🍋", "🍋", "🍎", "🍎"]

//Bad
let containsApple = !emojis.filter { $0 == "🍎" }.isEmpty

//Good
let containsApple = emojis.contains("🍎")
====

コレクションの要素が全部リンゴの場合：[🍎, 🍎, 🍎, 🍎]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000001311302 | 0.000000989437 |         1.33 |
       10 | 0.000001811981 | 0.000000202656 |         8.94 |
      100 | 0.000011909008 | 0.000000107288 |       111.00 |
     1000 | 0.000088107586 | 0.000000202656 |       434.76 |
    10000 | 0.000952231884 | 0.000000393391 |      2420.58 |
   100000 | 0.009036517143 | 0.000000202656 |     44590.47 |
  1000000 | 0.084258031845 | 0.000000298023 |    282723.04 |
 10000000 | 0.839069497585 | 0.000000500679 |   1675863.12 |


コレクションの要素が全部レモンの場合：[🍋, 🍋, 🍋, 🍋]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000000596046 | 0.000000202656 |         2.94 |
       10 | 0.000001013279 | 0.000000762939 |         1.33 |
      100 | 0.000007891655 | 0.000007486343 |         1.05 |
     1000 | 0.000078165531 | 0.000072097778 |         1.08 |
    10000 | 0.000796902180 | 0.000721311569 |         1.10 |
   100000 | 0.007997405529 | 0.007344615459 |         1.09 |
  1000000 | 0.080875599384 | 0.072618293762 |         1.11 |
 10000000 | 0.805948412418 | 0.727369177341 |         1.11 |


コレクションの要素が前半レモン、後半リンゴの場合：[🍋, 🍋, 🍎, 🍎]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000000095367 | 0.000000107288 |         0.89 |
       10 | 0.000001299381 | 0.000000572205 |         2.27 |
      100 | 0.000009119511 | 0.000003993511 |         2.28 |
     1000 | 0.000080800056 | 0.000036287308 |         2.23 |
    10000 | 0.000822687149 | 0.000360798836 |         2.28 |
   100000 | 0.008331298828 | 0.003605306149 |         2.31 |
  1000000 | 0.081529879570 | 0.036142194271 |         2.26 |
 10000000 | 0.819422399998 | 0.362310695648 |         2.26 |
```

### ケース3 - コレクション内の全てのオブジェクトが条件を満たすことの確認

```
//===----------------------------------------------------------------------===//
// ケース3 - コレクション内の全てのオブジェクトが条件を満たすことの確認
//===----------------------------------------------------------------------===//

====
// 状況：全部リンゴかどうか知りたい
let emojis = ["🍎", "🍎", "🍎"]

//Bad
let isAllApple = emojis.filter { $0 != "🍎" }.isEmpty

//Good
let isAllApple = emojis.allSatisfy { $0 == "🍎" }
====

コレクションの要素が全部リンゴの場合：[🍎, 🍎, 🍎, 🍎]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000002300739 | 0.000001013279 |         2.27 |
       10 | 0.000002193451 | 0.000000679493 |         3.23 |
      100 | 0.000009775162 | 0.000006902218 |         1.42 |
     1000 | 0.000077176094 | 0.000068783760 |         1.12 |
    10000 | 0.000761473179 | 0.000673484802 |         1.13 |
   100000 | 0.007487070560 | 0.006473207474 |         1.16 |
  1000000 | 0.070038306713 | 0.064969193935 |         1.08 |
 10000000 | 0.688816702366 | 0.652889680862 |         1.06 |


コレクションの要素が全部レモンの場合：[🍋, 🍋, 🍋, 🍋]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000001001358 | 0.000000309944 |         3.23 |
       10 | 0.000001716614 | 0.000000095367 |        18.00 |
      100 | 0.000011813641 | 0.000000202656 |        58.29 |
     1000 | 0.000102484226 | 0.000000190735 |       537.31 |
    10000 | 0.001023483276 | 0.000000202656 |      5050.35 |
   100000 | 0.010052299500 | 0.000000309944 |     32432.62 |
  1000000 | 0.102523696423 | 0.000000381470 |    268759.72 |
 10000000 | 1.017203295231 | 0.000000405312 |   2509682.26 |


コレクションの要素が前半リンゴ、後半レモンの場合：[🍎, 🍎, 🍋, 🍋]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000000202656 | 0.000000107288 |         1.89 |
       10 | 0.000001382828 | 0.000000298023 |         4.64 |
      100 | 0.000009214878 | 0.000003588200 |         2.57 |
     1000 | 0.000083518028 | 0.000032532215 |         2.57 |
    10000 | 0.000841391087 | 0.000323200226 |         2.60 |
   100000 | 0.008425092697 | 0.003239917755 |         2.60 |
  1000000 | 0.084784424305 | 0.032417082787 |         2.62 |
 10000000 | 0.847915112972 | 0.325056290627 |         2.61 |
```

### ケース4 - コレクション内の最小のオブジェクトの取得

```
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

コレクションの要素が0から昇順の場合：[0, 1, 2, 3]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000002515316 | 0.000002300739 |         1.09 |
       10 | 0.000001418591 | 0.000000405312 |         3.50 |
      100 | 0.000010919571 | 0.000008296967 |         1.32 |
     1000 | 0.000084006786 | 0.000063014030 |         1.33 |
    10000 | 0.001071095467 | 0.000609695911 |         1.76 |
   100000 | 0.008440291882 | 0.005161833763 |         1.64 |
  1000000 | 0.079473102093 | 0.052000701427 |         1.53 |
 10000000 | 0.804372191429 | 0.519188094139 |         1.55 |
```

### ケース5 - コレクションが空かどうかの確認

```
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

コレクションの要素が全部リンゴの場合：[🍎, 🍎, 🍎, 🍎]

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000000095367 | 0.000000703335 |         0.14 |
       10 | 0.000000095367 | 0.000000107288 |         0.89 |
      100 | 0.000000000000 | 0.000000000000 |          nan |
     1000 | 0.000000107288 | 0.000000095367 |         1.12 |
    10000 | 0.000000095367 | 0.000000000000 |          inf |
   100000 | 0.000000095367 | 0.000000000000 |          inf |
  1000000 | 0.000000095367 | 0.000000107288 |         0.89 |
 10000000 | 0.000000000000 | 0.000000000000 |          nan |
```

### ケース6 - 文字列が空文字かどうかの確認

```
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

ランダムな文字列の場合：iOSDC

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000000286102 | 0.000000298023 |         0.96 |
       10 | 0.000000405312 | 0.000000000000 |          inf |
      100 | 0.000000596046 | 0.000000000000 |          inf |
     1000 | 0.000011110306 | 0.000000095367 |       116.50 |
    10000 | 0.000057411194 | 0.000000000000 |          inf |
   100000 | 0.000555777550 | 0.000000190735 |      2913.87 |
  1000000 | 0.005309009552 | 0.000000000000 |          inf |
 10000000 | 0.051606607437 | 0.000000095367 |    541134.50 |
```