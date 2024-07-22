//
//  ProcessorWorker.swift
//  TestesExemplo
//
//  Created by Lais Godinho on 17/07/24.
//

import Foundation

protocol ProcessorWorkerScheme {
    func readData() async -> [Int]
    func writeData(_ data: [Int])
}

class ProcessorWorker: ProcessorWorkerScheme {
    func readData() async -> [Int] {
        return [0, 1, 2]
    }
    
    func writeData(_ data: [Int]) {
        print("Writing data...")
    }
}
