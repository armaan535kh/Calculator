//
//  CalculatorView.swift
//  Calculator
//
//  Created by Armaan Khan  on 28/08/25.
//

import SwiftUI

struct CalculatorView: View {
    @State private var display = "0"
    @State private var firstNumber: Double = 0 //Store the first operand
    @State private var currentOperation: CalculatorButton?
    @State private var shouldResetDisplay: Bool = false
    
    
    let buttonLabels: [[CalculatorButton]] = [
        [.plusPlus, .clear, .minusMinus, .modulo],
        [.seven, .eight, .nine, .divide],
        [.four, .five, .six, .multiply],
        [.one, .two, .three, .minus],
        [.zero, .decimal, .equal, .plus]
    ]
    
    var body: some View {
        VStack {
            Display
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            ButtonsView
        }
    }
    
    
}

#Preview {
    CalculatorView()
}

extension CalculatorView {
    
    private var Display : some View{
        Text(display)
            .font(.largeTitle)
            .frame(maxWidth: .infinity,minHeight: 50, alignment: .topTrailing)
            .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 25))
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(.systemGray4))
            )
    }
    
    private var ButtonsView : some View {
        VStack(spacing: 12) {
            ForEach(buttonLabels, id: \.self) { row in
                HStack(spacing: 12) {
                    ForEach(row, id: \.self) { label in
                        Button {
                            handleButtonTap(label)
                        } label: {
                            Text(label.displayValue)
                                
                        }
                        .buttonStyle(.bordered)
                        .font(.title)
                        .frame(width: 75, height: 50)

                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.vertical,20)
            
    }
    
    private func handleButtonTap(_ button: CalculatorButton) {
        
        if button.isNumber {
            if display == "0" {
                display = button.displayValue
            } else {
                display += button.displayValue
            }
            
        } else if button == .clear {
            display = "0"
        } else if button.isOperation {
            
        } else if button == .equal {
            
        }
    }
}
