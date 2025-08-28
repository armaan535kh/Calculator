//
//  CalculatorView.swift
//  Calculator
//
//  Created by Armaan Khan  on 28/08/25.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        VStack {
            Display
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
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 25))
    }
}
