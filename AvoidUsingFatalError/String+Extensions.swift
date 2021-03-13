//
//  String+Extensions.swift
//  AvoidUsingFatalError
//
//  Created by zrn_ns on 2021/03/13.
//

import Foundation

extension String {
    enum Errors: Error {
        case indexOutOfRange
    }

    func repeated(times: Int) throws -> String {
        guard times >= 0 else { throw Errors.indexOutOfRange }

        var text = ""
        (0 ..< times).forEach { _ in text += self }
        return text
    }
}
