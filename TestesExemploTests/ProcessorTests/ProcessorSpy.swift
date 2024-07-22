//
//  ProcessorSpy.swift
//  TestesExemploTests
//
//  Created by Lais Godinho on 17/07/24.
//

import Foundation
@testable import TestesExemplo

class ProcessorSpy: ProcessorWorkerScheme {
    private(set) var didAskToWriteData: Bool = false
    
    func readData() async -> [Int] {
        return [0, 0, 0]
    }
    
    func writeData(_ data: [Int]) {
        self.didAskToWriteData = true
    }
}
