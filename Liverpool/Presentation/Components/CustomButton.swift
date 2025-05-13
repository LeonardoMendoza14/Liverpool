//
//  CustomButtonBlue.swift
//  LearnOnline
//
//  Created by Mac OS lab on 12/05/25.
//

import SwiftUI

struct CustomButton: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        
        Button(action: {
            
        }){
            Button(action: {
                action()
            }){
                Text("Login")
                    .frame(maxWidth: .infinity, minHeight: 14)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(15)
            }
        }
    }
}
