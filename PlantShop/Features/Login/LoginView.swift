//
//  LoginView.swift
//  PlantShop
//
//  Created by Tran Hieu on 29/05/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var isShowing: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            Image.LoginIcon
                .resizable()
                .scaledToFit()
                .frame(maxHeight: .infinity, alignment: .top)
                .ignoresSafeArea()
            
            LinearGradient(colors: [.clear, .clear, Color.AppDarkGreenColor], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Buy Your Favorite\nPlants, Only Here!")
                    .withLargeTitle()
                    .foregroundColor(.white)
                
                Button {
                    isShowing.toggle()
                } label: {
                    Text("Log In")
                        .withHeadingFormat()
                        .foregroundColor(.white)
                        .padding(15)
                        .frame(maxWidth: .infinity)

                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.AppLightGreenColor)
                        
                        )
                    
                }
                
                Button {
                    isShowing.toggle()
                } label: {
                    Text("Sign Up")
                        .withHeadingFormat()
                        .foregroundColor(.white)
                        .padding(15)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .strokeBorder(Color.AppDarkGreenColor, lineWidth: 2)
                        )
                }
                
                Button {
                    isShowing.toggle()
                } label: {
                    Text("Guest")
                        .withHeadingFormat()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                }
            }
            .padding()
            
        }
        .fullScreenCover(isPresented: $isShowing) {
            HomeView()
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
