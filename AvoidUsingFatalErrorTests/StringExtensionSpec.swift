//
//  StringExtensionSpec.swift
//  AvoidUsingFatalErrorTests
//
//  Created by zrn_ns on 2021/03/13.
//

import Nimble
import Quick

@testable import AvoidUsingFatalError

class StringExtensionSpec: QuickSpec {
    override func spec() {
        describe("repeated(times:)のテスト") {
            describe("正常パターン") {
                it("繰り返し回数が0回の場合、空文字列が返ること") {
                    expect("abc".repeated(times: 0)) == ""
                }
                it("繰り返し回数が1回以上の場合、指定回数繰り返された文字列が返ること") {
                    expect("abc".repeated(times: 3)) == "abcabcabc"
                }
            }
            describe("異常パターン") {
                it("繰り返し回数に負の数が与えられた場合、クラッシュすること") {
                    expect { "abc".repeated(times: -1) }.to(throwAssertion())
                }
            }
        }
    }
}
