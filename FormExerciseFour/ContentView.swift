//
//  ContentView.swift
//  FormExerciseFour
//
//  Created by AUNG KO LIN on 2024/06/17.
//

import SwiftUI
struct ContentView: View {
    @State private var name: String = ""
    @State private var isUserNameActive: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack {
                VStack{
                    RoundedRectangle(cornerRadius:1)
                        .frame(height: 190)
                        .foregroundColor(Color("bg_color"))
                }
                .overlay() {
                    Image("profile")
                        .resizable()
                        .frame(width: 142, height: 142)
                }
                
                VStack{
                    Text("Change Picture")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                
                ScrollView{
                    TextFieldview(title: "Username", placeholder: "Aung KO Lin" )
                    TextFieldview(title: "Email I'd", placeholder: "akl@gmail.com")
                    TextFieldview(title: "Phone Number", placeholder: "+080 1234 5678")
                    TextFieldview(title: "Password", placeholder: "aklakl1234")
                    
                    ButtonView()
                        .padding()
                }//:SCROLLVIEW
                
            }//: VSTACK
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "chevron.left")
                    }
                    .foregroundColor(.white)
                }
                
                ToolbarItem(placement: .principal) {
                    Button {
                        
                    } label: {
                        Text( "Edit Profile")
                    }
                    .foregroundColor(.white)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                    .foregroundColor(.white)
                }
            }
            .ignoresSafeArea(.all)
        } //:NAVIAGTION
    }
}

#Preview {
    ContentView()
}


