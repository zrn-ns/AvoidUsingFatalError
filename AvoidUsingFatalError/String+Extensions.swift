//
//  String+Extensions.swift
//  AvoidUsingFatalError
//
//  Created by zrn_ns on 2021/03/13.
//

import Foundation

extension String {
    func repeated(times: Int) -> String {
        precondition(times >= 0, "繰り返し回数に負の数を指定することはできません！")

        var text = ""
        (0 ..< times).forEach { _ in text += self }
        return text
    }
}
