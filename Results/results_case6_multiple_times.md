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
---- Bad ----
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000953674(s)
Size:         1, Elasped time: 0.000000953674(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000953674(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000953674(s)
Size:       100, Elasped time: 0.000000953674(s)
Size:       100, Elasped time: 0.000001072884(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000001072884(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000953674(s)
Size:       100, Elasped time: 0.000000953674(s)
Size:      1000, Elasped time: 0.000006079674(s)
Size:      1000, Elasped time: 0.000005006790(s)
Size:      1000, Elasped time: 0.000005006790(s)
Size:      1000, Elasped time: 0.000005960464(s)
Size:      1000, Elasped time: 0.000015020370(s)
Size:      1000, Elasped time: 0.000015020370(s)
Size:      1000, Elasped time: 0.000014066696(s)
Size:      1000, Elasped time: 0.000013947487(s)
Size:      1000, Elasped time: 0.000025033951(s)
Size:      1000, Elasped time: 0.000005960464(s)
Size:     10000, Elasped time: 0.000055074692(s)
Size:     10000, Elasped time: 0.000055074692(s)
Size:     10000, Elasped time: 0.000054001808(s)
Size:     10000, Elasped time: 0.000054001808(s)
Size:     10000, Elasped time: 0.000054001808(s)
Size:     10000, Elasped time: 0.000061988831(s)
Size:     10000, Elasped time: 0.000064015388(s)
Size:     10000, Elasped time: 0.000057935715(s)
Size:     10000, Elasped time: 0.000063061714(s)
Size:     10000, Elasped time: 0.000054955482(s)
Size:    100000, Elasped time: 0.000536918640(s)
Size:    100000, Elasped time: 0.000571966171(s)
Size:    100000, Elasped time: 0.000540971756(s)
Size:    100000, Elasped time: 0.000588059425(s)
Size:    100000, Elasped time: 0.000590920448(s)
Size:    100000, Elasped time: 0.000550985336(s)
Size:    100000, Elasped time: 0.000537991524(s)
Size:    100000, Elasped time: 0.000548005104(s)
Size:    100000, Elasped time: 0.000551939011(s)
Size:    100000, Elasped time: 0.000540018082(s)
Size:   1000000, Elasped time: 0.005515098572(s)
Size:   1000000, Elasped time: 0.005141019821(s)
Size:   1000000, Elasped time: 0.005169034004(s)
Size:   1000000, Elasped time: 0.005324959755(s)
Size:   1000000, Elasped time: 0.005210042000(s)
Size:   1000000, Elasped time: 0.005298018456(s)
Size:   1000000, Elasped time: 0.005355000496(s)
Size:   1000000, Elasped time: 0.005301952362(s)
Size:   1000000, Elasped time: 0.005471944809(s)
Size:   1000000, Elasped time: 0.005303025246(s)
Size:  10000000, Elasped time: 0.051118016243(s)
Size:  10000000, Elasped time: 0.051262021065(s)
Size:  10000000, Elasped time: 0.052402973175(s)
Size:  10000000, Elasped time: 0.051412940025(s)
Size:  10000000, Elasped time: 0.051311016083(s)
Size:  10000000, Elasped time: 0.051427006721(s)
Size:  10000000, Elasped time: 0.051303029060(s)
Size:  10000000, Elasped time: 0.051076054573(s)
Size:  10000000, Elasped time: 0.053166985512(s)
Size:  10000000, Elasped time: 0.051586031914(s)
---- Good ----
Size:         1, Elasped time: 0.000002980232(s)
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
Size:      1000, Elasped time: 0.000000953674(s)
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
Size:    100000, Elasped time: 0.000000953674(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000953674(s)
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
Size:  10000000, Elasped time: 0.000000953674(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)


計測結果の表

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

Size      : データのサイズ
Bad       : Badケースの平均
Good      : Goodケースの平均
Bad / Good: Badケースの平均 / Goodケースの平均


