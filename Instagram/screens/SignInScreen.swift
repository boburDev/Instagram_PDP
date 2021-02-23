//
//  SignInScreen.swift
//  Instagram
//
//  Created by Boburmirzo on 2/22/21.
//

import SwiftUI

struct SignInScreen: View {
    @EnvironmentObject var status: Status
    
    @State var email = ""
    @State var password = ""
    @State var isModal = false
    
    var body: some View {
        VStack{
            Spacer()
            Text("Instagram").font(.system(size: 40))
            TextField("Email", text: $email)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(8)
            SecureField("Password", text: $password)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(8)
            Button(action: {
                UserDefaults.standard.set("Boburmirzo", forKey: "userid")
                status.listen()
            }, label: {
                HStack{
                    Spacer()
                    Text("SignIn").foregroundColor(.white)
                    Spacer()
                }
            })
            .frame(height:45)
            .background(Color.blue)
            .cornerRadius(8)
            Spacer()
            HStack{
                Text("Don't you have an account?")
                Button("SignUp"){
                    isModal = true
                }.sheet(isPresented: $isModal, content: {
                    
                })
                .font(.system(size: 18))
                .foregroundColor(.black)
            }
            
        }.padding(10)
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
