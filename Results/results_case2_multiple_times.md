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
---- Bad ----
Size:         1, Elasped time: 0.000010013580(s)
Size:         1, Elasped time: 0.000001072884(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000953674(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000002980232(s)
Size:        10, Elasped time: 0.000002026558(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000002026558(s)
Size:        10, Elasped time: 0.000002026558(s)
Size:        10, Elasped time: 0.000001907349(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000002026558(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000002026558(s)
Size:       100, Elasped time: 0.000010967255(s)
Size:       100, Elasped time: 0.000025987625(s)
Size:       100, Elasped time: 0.000010013580(s)
Size:       100, Elasped time: 0.000010967255(s)
Size:       100, Elasped time: 0.000011920929(s)
Size:       100, Elasped time: 0.000012040138(s)
Size:       100, Elasped time: 0.000010013580(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:      1000, Elasped time: 0.000094056129(s)
Size:      1000, Elasped time: 0.000087976456(s)
Size:      1000, Elasped time: 0.000084996223(s)
Size:      1000, Elasped time: 0.000087976456(s)
Size:      1000, Elasped time: 0.000090956688(s)
Size:      1000, Elasped time: 0.000095009804(s)
Size:      1000, Elasped time: 0.000090956688(s)
Size:      1000, Elasped time: 0.000083088875(s)
Size:      1000, Elasped time: 0.000083088875(s)
Size:      1000, Elasped time: 0.000082969666(s)
Size:     10000, Elasped time: 0.000899076462(s)
Size:     10000, Elasped time: 0.001157999039(s)
Size:     10000, Elasped time: 0.001033067703(s)
Size:     10000, Elasped time: 0.000887036324(s)
Size:     10000, Elasped time: 0.000947952271(s)
Size:     10000, Elasped time: 0.000892996788(s)
Size:     10000, Elasped time: 0.000922083855(s)
Size:     10000, Elasped time: 0.000977993011(s)
Size:     10000, Elasped time: 0.000920057297(s)
Size:     10000, Elasped time: 0.000884056091(s)
Size:    100000, Elasped time: 0.010030984879(s)
Size:    100000, Elasped time: 0.008926987648(s)
Size:    100000, Elasped time: 0.009016036987(s)
Size:    100000, Elasped time: 0.008963108063(s)
Size:    100000, Elasped time: 0.009130001068(s)
Size:    100000, Elasped time: 0.009020090103(s)
Size:    100000, Elasped time: 0.009201049805(s)
Size:    100000, Elasped time: 0.008898973465(s)
Size:    100000, Elasped time: 0.008559942245(s)
Size:    100000, Elasped time: 0.008617997169(s)
Size:   1000000, Elasped time: 0.087611079216(s)
Size:   1000000, Elasped time: 0.087608933449(s)
Size:   1000000, Elasped time: 0.084094047546(s)
Size:   1000000, Elasped time: 0.083104014397(s)
Size:   1000000, Elasped time: 0.082895040512(s)
Size:   1000000, Elasped time: 0.085518002510(s)
Size:   1000000, Elasped time: 0.083470106125(s)
Size:   1000000, Elasped time: 0.082709074020(s)
Size:   1000000, Elasped time: 0.082633018494(s)
Size:   1000000, Elasped time: 0.082937002182(s)
Size:  10000000, Elasped time: 0.857462048531(s)
Size:  10000000, Elasped time: 0.850896954536(s)
Size:  10000000, Elasped time: 0.862782001495(s)
Size:  10000000, Elasped time: 0.826918959618(s)
Size:  10000000, Elasped time: 0.832123994827(s)
Size:  10000000, Elasped time: 0.833353996277(s)
Size:  10000000, Elasped time: 0.830713987350(s)
Size:  10000000, Elasped time: 0.831938982010(s)
Size:  10000000, Elasped time: 0.838651061058(s)
Size:  10000000, Elasped time: 0.825852990150(s)
---- Good ----
Size:         1, Elasped time: 0.000009894371(s)
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
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000001072884(s)
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
Size:      1000, Elasped time: 0.000001072884(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:      1000, Elasped time: 0.000000953674(s)
Size:      1000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000953674(s)
Size:     10000, Elasped time: 0.000001072884(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000953674(s)
Size:     10000, Elasped time: 0.000000953674(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:     10000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000001072884(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000000000(s)
Size:    100000, Elasped time: 0.000000953674(s)
Size:   1000000, Elasped time: 0.000000953674(s)
Size:   1000000, Elasped time: 0.000001072884(s)
Size:   1000000, Elasped time: 0.000000953674(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:   1000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000953674(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000001072884(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000001072884(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000953674(s)
Size:  10000000, Elasped time: 0.000000000000(s)
Size:  10000000, Elasped time: 0.000000953674(s)


計測結果の表

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

Size      : データのサイズ
Bad       : Badケースの平均
Good      : Goodケースの平均
Bad / Good: Badケースの平均 / Goodケースの平均



コレクションの要素が全部レモンの場合：[🍋, 🍋, 🍋, 🍋]
---- Bad ----
Size:         1, Elasped time: 0.000003933907(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000953674(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000001072884(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007033348(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:      1000, Elasped time: 0.000077962875(s)
Size:      1000, Elasped time: 0.000078082085(s)
Size:      1000, Elasped time: 0.000077962875(s)
Size:      1000, Elasped time: 0.000077962875(s)
Size:      1000, Elasped time: 0.000078916550(s)
Size:      1000, Elasped time: 0.000077962875(s)
Size:      1000, Elasped time: 0.000078916550(s)
Size:      1000, Elasped time: 0.000077962875(s)
Size:      1000, Elasped time: 0.000077962875(s)
Size:      1000, Elasped time: 0.000077962875(s)
Size:     10000, Elasped time: 0.000784039497(s)
Size:     10000, Elasped time: 0.000797986984(s)
Size:     10000, Elasped time: 0.000782966614(s)
Size:     10000, Elasped time: 0.000797986984(s)
Size:     10000, Elasped time: 0.000800967216(s)
Size:     10000, Elasped time: 0.000797033310(s)
Size:     10000, Elasped time: 0.000800013542(s)
Size:     10000, Elasped time: 0.000801086426(s)
Size:     10000, Elasped time: 0.000805974007(s)
Size:     10000, Elasped time: 0.000800967216(s)
Size:    100000, Elasped time: 0.008008003235(s)
Size:    100000, Elasped time: 0.007990002632(s)
Size:    100000, Elasped time: 0.008010983467(s)
Size:    100000, Elasped time: 0.007979989052(s)
Size:    100000, Elasped time: 0.007984042168(s)
Size:    100000, Elasped time: 0.007987022400(s)
Size:    100000, Elasped time: 0.008001923561(s)
Size:    100000, Elasped time: 0.007997989655(s)
Size:    100000, Elasped time: 0.008036017418(s)
Size:    100000, Elasped time: 0.007978081703(s)
Size:   1000000, Elasped time: 0.080583930016(s)
Size:   1000000, Elasped time: 0.080365061760(s)
Size:   1000000, Elasped time: 0.081206917763(s)
Size:   1000000, Elasped time: 0.082192063332(s)
Size:   1000000, Elasped time: 0.080710053444(s)
Size:   1000000, Elasped time: 0.080676078796(s)
Size:   1000000, Elasped time: 0.080814003944(s)
Size:   1000000, Elasped time: 0.080402970314(s)
Size:   1000000, Elasped time: 0.080462932587(s)
Size:   1000000, Elasped time: 0.081341981888(s)
Size:  10000000, Elasped time: 0.808854937553(s)
Size:  10000000, Elasped time: 0.809801101685(s)
Size:  10000000, Elasped time: 0.805459022522(s)
Size:  10000000, Elasped time: 0.806264042854(s)
Size:  10000000, Elasped time: 0.804780006409(s)
Size:  10000000, Elasped time: 0.805667042732(s)
Size:  10000000, Elasped time: 0.806141018867(s)
Size:  10000000, Elasped time: 0.804700016975(s)
Size:  10000000, Elasped time: 0.804003953934(s)
Size:  10000000, Elasped time: 0.803812980652(s)
---- Good ----
Size:         1, Elasped time: 0.000002026558(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:         1, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000007033348(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000006914139(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007033348(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007033348(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000006914139(s)
Size:      1000, Elasped time: 0.000072002411(s)
Size:      1000, Elasped time: 0.000072002411(s)
Size:      1000, Elasped time: 0.000072002411(s)
Size:      1000, Elasped time: 0.000072002411(s)
Size:      1000, Elasped time: 0.000072002411(s)
Size:      1000, Elasped time: 0.000072002411(s)
Size:      1000, Elasped time: 0.000072002411(s)
Size:      1000, Elasped time: 0.000072002411(s)
Size:      1000, Elasped time: 0.000072002411(s)
Size:      1000, Elasped time: 0.000072956085(s)
Size:     10000, Elasped time: 0.000720977783(s)
Size:     10000, Elasped time: 0.000721931458(s)
Size:     10000, Elasped time: 0.000723004341(s)
Size:     10000, Elasped time: 0.000720024109(s)
Size:     10000, Elasped time: 0.000720024109(s)
Size:     10000, Elasped time: 0.000720024109(s)
Size:     10000, Elasped time: 0.000721096992(s)
Size:     10000, Elasped time: 0.000720977783(s)
Size:     10000, Elasped time: 0.000724077225(s)
Size:     10000, Elasped time: 0.000720977783(s)
Size:    100000, Elasped time: 0.007207036018(s)
Size:    100000, Elasped time: 0.007207989693(s)
Size:    100000, Elasped time: 0.007203936577(s)
Size:    100000, Elasped time: 0.007205009460(s)
Size:    100000, Elasped time: 0.007204055786(s)
Size:    100000, Elasped time: 0.007292985916(s)
Size:    100000, Elasped time: 0.007357001305(s)
Size:    100000, Elasped time: 0.007357001305(s)
Size:    100000, Elasped time: 0.007577061653(s)
Size:    100000, Elasped time: 0.007834076881(s)
Size:   1000000, Elasped time: 0.073073983192(s)
Size:   1000000, Elasped time: 0.072459936142(s)
Size:   1000000, Elasped time: 0.072440028191(s)
Size:   1000000, Elasped time: 0.072553992271(s)
Size:   1000000, Elasped time: 0.072561979294(s)
Size:   1000000, Elasped time: 0.072397947311(s)
Size:   1000000, Elasped time: 0.072710990906(s)
Size:   1000000, Elasped time: 0.072738051414(s)
Size:   1000000, Elasped time: 0.072733998299(s)
Size:   1000000, Elasped time: 0.072512030602(s)
Size:  10000000, Elasped time: 0.736464977264(s)
Size:  10000000, Elasped time: 0.728124976158(s)
Size:  10000000, Elasped time: 0.724938988686(s)
Size:  10000000, Elasped time: 0.723902940750(s)
Size:  10000000, Elasped time: 0.726007938385(s)
Size:  10000000, Elasped time: 0.727982997894(s)
Size:  10000000, Elasped time: 0.725504040718(s)
Size:  10000000, Elasped time: 0.722624897957(s)
Size:  10000000, Elasped time: 0.727445960045(s)
Size:  10000000, Elasped time: 0.730694055557(s)


計測結果の表

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

Size      : データのサイズ
Bad       : Badケースの平均
Good      : Goodケースの平均
Bad / Good: Badケースの平均 / Goodケースの平均



コレクションの要素が前半レモン、後半リンゴの場合：[🍋, 🍋, 🍎, 🍎]
---- Bad ----
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000953674(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000002980232(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000002026558(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000001072884(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:       100, Elasped time: 0.000010013580(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:       100, Elasped time: 0.000008940697(s)
Size:       100, Elasped time: 0.000007987022(s)
Size:       100, Elasped time: 0.000010013580(s)
Size:       100, Elasped time: 0.000009059906(s)
Size:       100, Elasped time: 0.000008940697(s)
Size:      1000, Elasped time: 0.000079989433(s)
Size:      1000, Elasped time: 0.000081062317(s)
Size:      1000, Elasped time: 0.000079989433(s)
Size:      1000, Elasped time: 0.000079989433(s)
Size:      1000, Elasped time: 0.000079989433(s)
Size:      1000, Elasped time: 0.000079989433(s)
Size:      1000, Elasped time: 0.000081062317(s)
Size:      1000, Elasped time: 0.000082015991(s)
Size:      1000, Elasped time: 0.000081896782(s)
Size:      1000, Elasped time: 0.000082015991(s)
Size:     10000, Elasped time: 0.000820994377(s)
Size:     10000, Elasped time: 0.000867962837(s)
Size:     10000, Elasped time: 0.000860929489(s)
Size:     10000, Elasped time: 0.000853061676(s)
Size:     10000, Elasped time: 0.000806927681(s)
Size:     10000, Elasped time: 0.000802040100(s)
Size:     10000, Elasped time: 0.000805974007(s)
Size:     10000, Elasped time: 0.000803947449(s)
Size:     10000, Elasped time: 0.000802040100(s)
Size:     10000, Elasped time: 0.000802993774(s)
Size:    100000, Elasped time: 0.008368015289(s)
Size:    100000, Elasped time: 0.008345961571(s)
Size:    100000, Elasped time: 0.008292078972(s)
Size:    100000, Elasped time: 0.008363962173(s)
Size:    100000, Elasped time: 0.008412957191(s)
Size:    100000, Elasped time: 0.008363008499(s)
Size:    100000, Elasped time: 0.008283972740(s)
Size:    100000, Elasped time: 0.008306980133(s)
Size:    100000, Elasped time: 0.008428096771(s)
Size:    100000, Elasped time: 0.008147954941(s)
Size:   1000000, Elasped time: 0.082495927811(s)
Size:   1000000, Elasped time: 0.081183910370(s)
Size:   1000000, Elasped time: 0.081177949905(s)
Size:   1000000, Elasped time: 0.081110000610(s)
Size:   1000000, Elasped time: 0.081205010414(s)
Size:   1000000, Elasped time: 0.081289052963(s)
Size:   1000000, Elasped time: 0.081578969955(s)
Size:   1000000, Elasped time: 0.081746935844(s)
Size:   1000000, Elasped time: 0.081809043884(s)
Size:   1000000, Elasped time: 0.081701993942(s)
Size:  10000000, Elasped time: 0.823431015015(s)
Size:  10000000, Elasped time: 0.818922996521(s)
Size:  10000000, Elasped time: 0.818635106087(s)
Size:  10000000, Elasped time: 0.821036934853(s)
Size:  10000000, Elasped time: 0.836833000183(s)
Size:  10000000, Elasped time: 0.818562030792(s)
Size:  10000000, Elasped time: 0.817548036575(s)
Size:  10000000, Elasped time: 0.812224030495(s)
Size:  10000000, Elasped time: 0.813380956650(s)
Size:  10000000, Elasped time: 0.813649892807(s)
---- Good ----
Size:         0, Elasped time: 0.000001072884(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:         0, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000001907349(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000953674(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:        10, Elasped time: 0.000000000000(s)
Size:       100, Elasped time: 0.000004053116(s)
Size:       100, Elasped time: 0.000003933907(s)
Size:       100, Elasped time: 0.000004053116(s)
Size:       100, Elasped time: 0.000004053116(s)
Size:       100, Elasped time: 0.000003933907(s)
Size:       100, Elasped time: 0.000003933907(s)
Size:       100, Elasped time: 0.000003933907(s)
Size:       100, Elasped time: 0.000004053116(s)
Size:       100, Elasped time: 0.000003933907(s)
Size:       100, Elasped time: 0.000004053116(s)
Size:      1000, Elasped time: 0.000036001205(s)
Size:      1000, Elasped time: 0.000036954880(s)
Size:      1000, Elasped time: 0.000036001205(s)
Size:      1000, Elasped time: 0.000036954880(s)
Size:      1000, Elasped time: 0.000035881996(s)
Size:      1000, Elasped time: 0.000036001205(s)
Size:      1000, Elasped time: 0.000037074089(s)
Size:      1000, Elasped time: 0.000036001205(s)
Size:      1000, Elasped time: 0.000036001205(s)
Size:      1000, Elasped time: 0.000036001205(s)
Size:     10000, Elasped time: 0.000360012054(s)
Size:     10000, Elasped time: 0.000360012054(s)
Size:     10000, Elasped time: 0.000362992287(s)
Size:     10000, Elasped time: 0.000360965729(s)
Size:     10000, Elasped time: 0.000359892845(s)
Size:     10000, Elasped time: 0.000360965729(s)
Size:     10000, Elasped time: 0.000361084938(s)
Size:     10000, Elasped time: 0.000360012054(s)
Size:     10000, Elasped time: 0.000361084938(s)
Size:     10000, Elasped time: 0.000360965729(s)
Size:    100000, Elasped time: 0.003604054451(s)
Size:    100000, Elasped time: 0.003604054451(s)
Size:    100000, Elasped time: 0.003607988358(s)
Size:    100000, Elasped time: 0.003604054451(s)
Size:    100000, Elasped time: 0.003603935242(s)
Size:    100000, Elasped time: 0.003606915474(s)
Size:    100000, Elasped time: 0.003610014915(s)
Size:    100000, Elasped time: 0.003606081009(s)
Size:    100000, Elasped time: 0.003604054451(s)
Size:    100000, Elasped time: 0.003601908684(s)
Size:   1000000, Elasped time: 0.036481022835(s)
Size:   1000000, Elasped time: 0.036113977432(s)
Size:   1000000, Elasped time: 0.036087989807(s)
Size:   1000000, Elasped time: 0.036090016365(s)
Size:   1000000, Elasped time: 0.036072015762(s)
Size:   1000000, Elasped time: 0.036120057106(s)
Size:   1000000, Elasped time: 0.036150932312(s)
Size:   1000000, Elasped time: 0.036084890366(s)
Size:   1000000, Elasped time: 0.036148071289(s)
Size:   1000000, Elasped time: 0.036072969437(s)
Size:  10000000, Elasped time: 0.366291046143(s)
Size:  10000000, Elasped time: 0.361261010170(s)
Size:  10000000, Elasped time: 0.362885951996(s)
Size:  10000000, Elasped time: 0.361478090286(s)
Size:  10000000, Elasped time: 0.361263990402(s)
Size:  10000000, Elasped time: 0.361371994019(s)
Size:  10000000, Elasped time: 0.361649990082(s)
Size:  10000000, Elasped time: 0.361127972603(s)
Size:  10000000, Elasped time: 0.361364960670(s)
Size:  10000000, Elasped time: 0.364411950111(s)


計測結果の表

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

Size      : データのサイズ
Bad       : Badケースの平均
Good      : Goodケースの平均
Bad / Good: Badケースの平均 / Goodケースの平均



```