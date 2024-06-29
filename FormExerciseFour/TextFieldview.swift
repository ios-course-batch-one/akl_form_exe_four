//
//  TextFieldview.swift
//  FormExerciseFour
//
//  Created by AUNG KO LIN on 2024/06/25.
//

import SwiftUI

struct TextFieldview: View {
    @State private var name: String = ""
    let title: String
    let placeholder: String
    var body: some View {
        
        VStack(alignment:.leading){
            Text(title)
            TextField(placeholder, text: $name)
                .padding()
                .textFieldStyle(.plain)
                .tint(.primary)
                .frame(width:318 , height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(lineWidth: 1))
                .foregroundColor(.secondary)
            
        }
        .padding(.horizontal,20)

        
    }
}

#Preview {
    TextFieldview(title: "Name", placeholder: "Enter You Name")
}
