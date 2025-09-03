//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Armaan Khan  on 29/08/25.
//

import Foundation

enum CalculatorButton: String, CaseIterable {
    
    //Numbers
    case zero = " 0"
    case one = " 1"
    case two = " 2"
    case three = " 3"
    case four = " 4"
    case five = " 5"
    case six = " 6"
    case seven = " 7"
    case eight = " 8"
    case nine = " 9"
    
    //Signs
    case plus = " +"
    case plusPlus = "++"
    case minusMinus = "--"
    case modulo = " %"
    case minus = " -"
    case multiply = " *"
    case divide = " /"
    case equal = " ="
    case clear = " C"
    case decimal = " ."
    
    var displayValue: String {
        return self.rawValue
    }
    
    var isNumber: Bool {
        switch self {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine:
            return true
        default:
            return false
        }
    }
    
    var isOperation: Bool {
        switch self {
        case .plus, .minus, .multiply, .divide, .equal, .clear, .plusPlus, .minusMinus, .modulo, .decimal:
            return true
        default:
            return false
        }
    }
}
