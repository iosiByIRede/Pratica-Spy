//
//  Processor.swift
//  TestesExemplo
//
//  Created by Lais Godinho on 17/07/24.
//

import Foundation

class Processor {
    private(set) var isActive: Bool = false
    private(set) var content: [Int] = []
    
    var worker: any ProcessorWorkerScheme
    
    init(worker: any ProcessorWorkerScheme) {
        self.worker = worker
    }
    
    func setUp() {
        self.isActive = true
    }
    
    func loadContent() async {
        self.content = await worker.readData()
    }
    
    func saveContent() {
        worker.writeData([])
    }
}
