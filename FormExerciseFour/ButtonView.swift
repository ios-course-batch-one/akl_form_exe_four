//
//  ButtonView.swift
//  FormExerciseFour
//
//  Created by AUNG KO LIN on 2024/06/27.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button{
            //
        }label: {
            Text("Update")
        }
        .foregroundColor(.white)
        .font(.headline)
        
        .background(
            RoundedRectangle(cornerRadius: 10)
            .frame(width: 283,height: 40))
    }
}

#Preview {
    ButtonView()
}
