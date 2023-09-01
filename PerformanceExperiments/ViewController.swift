//
//  ViewController.swift
//  PerformanceExperiments
//
//  Created by Akihiro Kokubo on 2023/08/30.
//

import UIKit

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

