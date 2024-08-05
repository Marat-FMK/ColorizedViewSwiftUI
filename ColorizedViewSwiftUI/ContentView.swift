//
//  ContentView.swift
//  ColorizedViewSwiftUI
//
//  Created by Marat Fakhrizhanov on 06.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = 150.0
    @State private var green = 40.0
    @State private var blue = 155.0
    
    @FocusState var isInputActive: Bool
    
    var body: some View {
        
        ZStack{
            
            VStack(spacing:100) {
                ColorView(red: red, green: green, blue: blue)
                
                VStack{
                    ColorSliderView(sliderValue: $red, color: .red)
                    ColorSliderView(sliderValue: $green, color:.green)
                    ColorSliderView(sliderValue: $blue, color: .blue)
                }
                .frame(height: 150)
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup (placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }
                Spacer()
                
            }
            
        }
        .padding()
        .background(Color.gray)
        .onTapGesture {
            isInputActive = false
        }
    }
}
#Preview {
    ContentView()
}
