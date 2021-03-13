//
//  String+Extensions.swift
//  AvoidUsingFatalError
//
//  Created by zrn_ns on 2021/03/13.
//

import Foundation

extension String {

    func repeated(times: UInt) throws -> String {
        var text = ""
        (0 ..< times).forEach { _ in text += self }
        return text
    }
}
