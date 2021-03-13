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

        label.text = "Hello".repeated(times: 3)
    }

    @IBOutlet private weak var label: UILabel!
}

