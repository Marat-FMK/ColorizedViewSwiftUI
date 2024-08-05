//
//  ColorSliderView.swift
//  ColorizedViewSwiftUI
//
//  Created by Marat Fakhrizhanov on 06.08.2024.
//

import SwiftUI

struct ColorSliderView: View {
   @Binding var sliderValue: Double
    @State var text = ""
    @State var showalert = false
    
    let color: Color
    var range = 0...255.0
    
    var body: some View {
        HStack {
            Text(sliderValue.formatted())
                .frame(width: 35, alignment: .leading)
                .foregroundColor(.white)
            
            Slider(value: $sliderValue, in: range, step: 1)
                .tint(color)
                .onChange(of: sliderValue) { _, newValue in
                    text = newValue.formatted()
                }
            TextFieldView(text: $text, action: checkValue)
                .alert("Wron format", isPresented: $showalert, actions: {}) {
                    Text("Please enter numbers")
                }
            
        }
        .onAppear {
            text = sliderValue.formatted()
        }
    }
    
    private func checkValue() {
        if let value = Double(text), range.contains(sliderValue) {
            self.sliderValue = value
        } else {
            showalert.toggle()
            sliderValue = 0
            text = "0"
        }
    }
    }


#Preview {
    ColorSliderView(sliderValue: .constant(170),color: .purple)
}
