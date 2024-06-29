//
//  TextFieldTest.swift
//  FormExerciseFour
//
//  Created by AUNG KO LIN on 2024/06/25.
//
import SwiftUI

struct EditProfileView: View {
    @State private var username = "yANCHUI"
    @State private var email = "yanchui@gmail.com"
    @State private var phoneNumber = "+14987889999"
    @State private var password = "evFTbyWVCd"
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    // Overlay Profile Image View
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 100, height: 100)
                        .overlay(
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                        )
                        .padding(.top, 40)
                    
                    // Change Picture Button
                    VStack {
                        Spacer()
                        Text("Change Picture")
                            .foregroundColor(.blue)
                            .padding(.top, 10)
                    }
                }
                
                Form {
                    // Form Fields
                    TextField("Username", text: $username)
                    TextField("Email I'd", text: $email)
                    TextField("Phone Number", text: $phoneNumber)
                    SecureField("Password", text: $password)
                    
                    Button(action: {
                        // Update action
                    }) {
                        Text("Update")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(8)
                    }
                }
                .padding(.top, 20)
            }
            .navigationBarTitle("Edit Profile", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                // Back action
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
            }, trailing: Button(action: {
                // Share action
            }) {
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.black)
            })
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
