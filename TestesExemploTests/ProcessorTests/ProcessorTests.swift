//
//  ProcessorTests.swift
//  TestesExemploTests
//
//  Created by Lais Godinho on 17/07/24.
//

import XCTest
@testable import TestesExemplo

final class ProcessorTests: XCTestCase {
    
    var sut: Processor!
    var spy: ProcessorSpy!

    override func setUp() {
        spy = ProcessorSpy()
        sut = Processor(worker: spy)
    }

    override func tearDown() {
        sut = nil
        spy = nil
    }

    func testExample() throws { }

    func test_processor_setup_isActive() {
        sut.setUp()
        XCTAssertTrue(sut.isActive)
    }
    
    func test_processor_loadContent() {
        //given
        let expected = [0, 0, 0]
        
        // when
        sut.loadContent()
        let actual = sut.content
        
        // then
        XCTAssertEqual(expected, actual)
        XCTAssertFalse(sut.content.isEmpty)
    }
    
    func test_processor_saveContent() {
        sut.saveContent()
        
        XCTAssertTrue(spy.didAskToWriteData)
    }

}
