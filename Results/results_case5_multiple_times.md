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
---- Bad ----
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
---- Good ----
Size:         1, Elasped time: 0.000006914139(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:       100, Elasped time: 0.000001072884(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000953674(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)


計測結果の表

   Size   |      Bad       |      Good      |  Bad / Good  |
-----------------------------------------------------------
        1 | 0.000000107288 | 0.000000691414 |         0.16 |
       10 | 0.000000000000 | 0.000000095367 |         0.00 |
      100 | 0.000000000000 | 0.000000107288 |         0.00 |
     1000 | 0.000000000000 | 0.000000095367 |         0.00 |
    10000 | 0.000000000000 | 0.000000000000 |          nan |
   100000 | 0.000000000000 | 0.000000000000 |          nan |
  1000000 | 0.000000000000 | 0.000000000000 |          nan |
 10000000 | 0.000000000000 | 0.000000000000 |          nan |

Size      : データのサイズ
Bad       : Badケースの平均
Good      : Goodケースの平均
Bad / Good: Badケースの平均 / Goodケースの平均



```