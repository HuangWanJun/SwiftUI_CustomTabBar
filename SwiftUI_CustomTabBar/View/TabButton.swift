//
//  TabButton.swift
//  SwiftUI_CustomTabBar
//
//  Created by Samuel Huang on 26/12/2020.
//

import SwiftUI

struct TabButton: View {
    var title:String
    var image:String
    @Binding var selected: String
    
    var body: some View {
        
        Button(action: {
            withAnimation(.spring()){
                selected = title
            }
        }){
            
            HStack(spacing:10){
                Image(image)
                    .resizable()
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                
                if selected == title {
                    Text(title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
            .padding(.vertical,10)
            .padding(.horizontal)
            .background(Color.white.opacity(selected == title ? 0.08 : 0))
            .clipShape(Capsule())
            
            
        }
    }
}

 
