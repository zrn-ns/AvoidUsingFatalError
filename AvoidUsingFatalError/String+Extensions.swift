//
//  String+Extensions.swift
//  AvoidUsingFatalError
//
//  Created by zrn_ns on 2021/03/13.
//

import Foundation

extension String {

    func repeated(times: Int) -> String? {
        guard times >= 0 else { return nil }

        var text = ""
        (0 ..< times).forEach { _ in text += self }
        return text
    }
}
