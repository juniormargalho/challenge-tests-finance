//
//  GetRandomNumberUseCaseTests.swift
//  FinanceAppTests
//
//  Created by Junior Margalho on 30/06/22.
//

import XCTest

@testable import FinanceApp

final class GetRandomNumberUseCaseTests: XCTestCase {
    private lazy var sut = GetRandomNumberUseCase()
    private lazy var retuned = sut.execute(from: Constants.initial, to: Constants.final)
    
    func testReturnEqualsInteger() {
        XCTAssertTrue(retuned is Int)
    }

    func testIntegerReturnedBetweenRangeInputs() {
        let range = Constants.initial...Constants.final
        XCTAssertTrue(range.contains(retuned))
    }
}

private extension GetRandomNumberUseCaseTests {
    enum Constants {
        static let initial: Int = 0
        static let final: Int = 9
    }
}
