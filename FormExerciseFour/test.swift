//
//  test.swift
//  FormExerciseFour
//
//  Created by AUNG KO LIN on 2024/06/28.
//
import SwiftUI

struct test: View {
    @State private var name: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                
                Text("Change Picture")
                    .font(.headline)
                    .padding(.top, 10)
                
                Form {
                    Section {
                        TextFieldView(title: "Username", placeholder: "Aung KO Lin")
                        TextFieldView(title: "Email I'd", placeholder: "akl@gmail.com")
                        TextFieldView(title: "Phone Number", placeholder: "+080 1234 5678")
                        TextFieldView(title: "Password", placeholder: "aklakl1234", isSecure: true)
                        
                        ButtonView()
                    }
                }
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Button(action: {
                // Back action
            }) {
                Image(systemName: "chevron.left")
            }, trailing: Button(action: {
                // Share action
            }) {
                Image(systemName: "square.and.arrow.up")
            })
            .foregroundColor(.white)
            .background(Color("bg_color"))
        }
    }
}

struct TextFieldView: View {
    var title: String
    var placeholder: String
    var isSecure: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.subheadline)
                .foregroundColor(.gray)
            if isSecure {
                SecureField(placeholder, text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            } else {
                TextField(placeholder, text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}

//struct ButtonView: View {
//    var body: some View {
//        Button(action: {
//            // Button action
//        }) {
//            Text("Save")
//                .font(.headline)
//                .frame(maxWidth: .infinity)
//                .padding()
//                .background(Color.blue)
//                .foregroundColor(.white)
//                .cornerRadius(8)
//        }
//        .padding(.top, 20)
//    }
//}

#Preview {
    test()
}
