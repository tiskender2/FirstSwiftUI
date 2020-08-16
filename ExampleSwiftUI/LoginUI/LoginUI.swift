//
//  LoginUI.swift
//  ExampleSwiftUI
//
//  Created by Tolga İskender on 15.08.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import SwiftUI

struct LoginUI: View {
    @State private var password: String = ""
    @State private var clickedLogin = false
    @State var showTextField = false
    @State var loginButtonFrame = false
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 20.0) {
                Spacer()
                VStack(alignment: .leading,spacing: 20) {
                    Image("man").resizable().frame(width: 100, height: 100, alignment:.center)
                    VStack (alignment: .leading, spacing: 2){
                        Text("Welcome to Login Page")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                        Text("Tolga Iskender")
                            .font(.largeTitle)
                            .multilineTextAlignment(.leading)
                    }
                }
                HStack {
                    if showTextField {
                        SecureField("Enter your password", text: $password).padding(.leading, 4.0).frame(height: 50)
                    }
                    Button(action: {
                        self.clickedLogin.toggle()
                        if self.clickedLogin
                        {
                            self.showTextField = true
                            self.loginButtonFrame = true
                        }
                    }) {
                        if loginButtonFrame {
                            Text("Login").frame(width: 50,height: 30).padding(.leading, 20).padding(.trailing, 20).padding(.all, 10).accentColor(Color.white)
                        } else {
                            Text("Login").padding(.leading, 40).padding(.trailing, 40).padding(.all, 15).accentColor(Color.white)
                        }
                        
                    }.background(Color.green).cornerRadius(5)
                }.background(Color.gray.opacity(0.2)).cornerRadius(5)
                HStack(spacing: 15) {
                    Text("SignUp")
                        .font(.subheadline)
                    Text("|")
                    Text("Contact Us")
                        .font(.subheadline)
                }
                
                
                Spacer()
            }
            Spacer()
        }.padding(24).padding(.bottom, 190)
        
    }
}

struct LoginUI_Previews: PreviewProvider {
    static var previews: some View {
        LoginUI()
    }
}
