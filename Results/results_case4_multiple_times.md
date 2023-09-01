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
---- Bad ----
Size:         1, Elasped time: 0.000020980835(s)
Size:         1, Elasped time: 0.000001072884(s)
Size:         1, Elasped time: 0.000000953674(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000001072884(s)
Size:         1, Elasped time: 0.000001072884(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000002026558(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000002026558(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000002026558(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000001907349(s)
Size:       100, Elasped time: 0.000011086464(s)
Size:       100, Elasped time: 0.000018954277(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:       100, Elasped time: 0.000008940697(s)
Size:       100, Elasped time: 0.000010967255(s)
Size:       100, Elasped time: 0.000010967255(s)
Size:       100, Elasped time: 0.000012040138(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:      1000, Elasped time: 0.000086069107(s)
Size:      1000, Elasped time: 0.000082969666(s)
Size:      1000, Elasped time: 0.000083923340(s)
Size:      1000, Elasped time: 0.000092029572(s)
Size:      1000, Elasped time: 0.000082015991(s)
Size:      1000, Elasped time: 0.000083088875(s)
Size:      1000, Elasped time: 0.000082015991(s)
Size:      1000, Elasped time: 0.000082969666(s)
Size:      1000, Elasped time: 0.000082969666(s)
Size:      1000, Elasped time: 0.000082015991(s)
Size:     10000, Elasped time: 0.000842928886(s)
Size:     10000, Elasped time: 0.000841975212(s)
Size:     10000, Elasped time: 0.000852942467(s)
Size:     10000, Elasped time: 0.000860929489(s)
Size:     10000, Elasped time: 0.000837087631(s)
Size:     10000, Elasped time: 0.000863075256(s)
Size:     10000, Elasped time: 0.000846028328(s)
Size:     10000, Elasped time: 0.001654028893(s)
Size:     10000, Elasped time: 0.002265930176(s)
Size:     10000, Elasped time: 0.000846028328(s)
Size:    100000, Elasped time: 0.008466005325(s)
Size:    100000, Elasped time: 0.008730053902(s)
Size:    100000, Elasped time: 0.008634924889(s)
Size:    100000, Elasped time: 0.008380055428(s)
Size:    100000, Elasped time: 0.008551955223(s)
Size:    100000, Elasped time: 0.008293032646(s)
Size:    100000, Elasped time: 0.008332967758(s)
Size:    100000, Elasped time: 0.008512973785(s)
Size:    100000, Elasped time: 0.008329987526(s)
Size:    100000, Elasped time: 0.008170962334(s)
Size:   1000000, Elasped time: 0.081179022789(s)
Size:   1000000, Elasped time: 0.079496979713(s)
Size:   1000000, Elasped time: 0.078868031502(s)
Size:   1000000, Elasped time: 0.078783035278(s)
Size:   1000000, Elasped time: 0.078981995583(s)
Size:   1000000, Elasped time: 0.078919053078(s)
Size:   1000000, Elasped time: 0.078907966614(s)
Size:   1000000, Elasped time: 0.079669952393(s)
Size:   1000000, Elasped time: 0.080317020416(s)
Size:   1000000, Elasped time: 0.079607963562(s)
Size:  10000000, Elasped time: 0.831862092018(s)
Size:  10000000, Elasped time: 0.795750975609(s)
Size:  10000000, Elasped time: 0.804924011230(s)
Size:  10000000, Elasped time: 0.806248068810(s)
Size:  10000000, Elasped time: 0.822405934334(s)
Size:  10000000, Elasped time: 0.797532916069(s)
Size:  10000000, Elasped time: 0.797798991203(s)
Size:  10000000, Elasped time: 0.797546982765(s)
Size:  10000000, Elasped time: 0.795238971710(s)
Size:  10000000, Elasped time: 0.794412970543(s)
---- Good ----
Size:         1, Elasped time: 0.000021934509(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000001072884(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000005006790(s)
Size:       100, Elasped time: 0.000024914742(s)
Size:       100, Elasped time: 0.000007033348(s)
Size:       100, Elasped time: 0.000006079674(s)
Size:       100, Elasped time: 0.000006914139(s)
Size:       100, Elasped time: 0.000007033348(s)
Size:       100, Elasped time: 0.000007033348(s)
Size:       100, Elasped time: 0.000007033348(s)
Size:       100, Elasped time: 0.000005960464(s)
Size:       100, Elasped time: 0.000005960464(s)
Size:      1000, Elasped time: 0.000062942505(s)
Size:      1000, Elasped time: 0.000063061714(s)
Size:      1000, Elasped time: 0.000062942505(s)
Size:      1000, Elasped time: 0.000062942505(s)
Size:      1000, Elasped time: 0.000062942505(s)
Size:      1000, Elasped time: 0.000063061714(s)
Size:      1000, Elasped time: 0.000063061714(s)
Size:      1000, Elasped time: 0.000063061714(s)
Size:      1000, Elasped time: 0.000063061714(s)
Size:      1000, Elasped time: 0.000063061714(s)
Size:     10000, Elasped time: 0.000627040863(s)
Size:     10000, Elasped time: 0.000627040863(s)
Size:     10000, Elasped time: 0.000627040863(s)
Size:     10000, Elasped time: 0.000624060631(s)
Size:     10000, Elasped time: 0.000626921654(s)
Size:     10000, Elasped time: 0.000623941422(s)
Size:     10000, Elasped time: 0.000586032867(s)
Size:     10000, Elasped time: 0.000586986542(s)
Size:     10000, Elasped time: 0.000584006310(s)
Size:     10000, Elasped time: 0.000583887100(s)
Size:    100000, Elasped time: 0.005228042603(s)
Size:    100000, Elasped time: 0.005161046982(s)
Size:    100000, Elasped time: 0.005148053169(s)
Size:    100000, Elasped time: 0.005148053169(s)
Size:    100000, Elasped time: 0.005161046982(s)
Size:    100000, Elasped time: 0.005161046982(s)
Size:    100000, Elasped time: 0.005154013634(s)
Size:    100000, Elasped time: 0.005156993866(s)
Size:    100000, Elasped time: 0.005151987076(s)
Size:    100000, Elasped time: 0.005148053169(s)
Size:   1000000, Elasped time: 0.052258014679(s)
Size:   1000000, Elasped time: 0.051911115646(s)
Size:   1000000, Elasped time: 0.052109956741(s)
Size:   1000000, Elasped time: 0.051880002022(s)
Size:   1000000, Elasped time: 0.052406072617(s)
Size:   1000000, Elasped time: 0.052210927010(s)
Size:   1000000, Elasped time: 0.051844000816(s)
Size:   1000000, Elasped time: 0.051679968834(s)
Size:   1000000, Elasped time: 0.051878929138(s)
Size:   1000000, Elasped time: 0.051828026772(s)
Size:  10000000, Elasped time: 0.521340012550(s)
Size:  10000000, Elasped time: 0.519107937813(s)
Size:  10000000, Elasped time: 0.519520998001(s)
Size:  10000000, Elasped time: 0.519345998764(s)
Size:  10000000, Elasped time: 0.521682977676(s)
Size:  10000000, Elasped time: 0.519331932068(s)
Size:  10000000, Elasped time: 0.519183993340(s)
Size:  10000000, Elasped time: 0.517327070236(s)
Size:  10000000, Elasped time: 0.516862034798(s)
Size:  10000000, Elasped time: 0.518177986145(s)


計測結果の表

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

Size      : データのサイズ
Bad       : Badケースの平均
Good      : Goodケースの平均
Bad / Good: Badケースの平均 / Goodケースの平均



```