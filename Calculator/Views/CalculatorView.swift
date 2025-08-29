//
//  CalculatorView.swift
//  Calculator
//
//  Created by Armaan Khan  on 28/08/25.
//

import SwiftUI

struct CalculatorView: View {
    
    
    let buttonLabels: [[String]] = [
        ["C", "++", "--", "%"],
        ["7", "8", "9", "/"],
        ["4", "5", "6", "*"],
        ["1", "2", "3", "-"],
        ["0", ".", "=", "+"]
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
        Text("0")
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
                            //action
                        } label: {
                            Text(label)
                                
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
}
