//
//  ViewController.swift
//  AvoidUsingFatalError
//
//  Created by zrn_ns on 2021/03/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var times: RepeatTimes = .zero
        do {
            times = try .init(3)
        } catch {
            // エラー処理等
            print(error)
        }
        label.text = "Hello".repeated(times: times)
    }

    @IBOutlet private weak var label: UILabel!
}
