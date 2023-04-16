//
//  transposeMatrix.swift
//  InOrder
//
//  Created by Luma Gabino on 02/06/22.
//
//  https://leetcode.com/problems/transpose-matrix/

import Foundation

class TransposeMatrix {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        let rowSize = matrix.count
        let columnSize = matrix[0].count
        var transpose = [[Int]](repeating: [Int](repeating: 0, count:rowSize), count: columnSize)
        
        for rowIndex in 0..<rowSize {
            for columnIndex in 0..<columnSize {
                transpose[columnIndex][rowIndex] = matrix[rowIndex][columnIndex]
            }
        }
        
        return transpose
    }
}

