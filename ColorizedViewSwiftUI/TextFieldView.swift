//
//  TextFieldView.swift
//  ColorizedViewSwiftUI
//
//  Created by Marat Fakhrizhanov on 06.08.2024.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    let action: () -> Void
    
    var body: some View {
        TextField("#color", text: $text) { _ in
            withAnimation {
                action()
            }
        }
        .frame(width:55, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
    }
}

#Preview {
    TextFieldView(text: .constant(""), action: {})
}
