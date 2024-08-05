//
//  ColorView.swift
//  ColorizedViewSwiftUI
//
//  Created by Marat Fakhrizhanov on 06.08.2024.
//

import SwiftUI

struct ColorView: View {
    
        let red: Double
        let green: Double
        let blue: Double
    
    var body: some View {
    Color(red: red / 255, green: green / 255, blue: blue / 255)
        .cornerRadius(20)
        .frame(height: 130)
        .overlay(
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.white, lineWidth:3)
        )
    
}
    
}

#Preview {
    ColorView(red: 150, green: 60, blue: 150)
}
