//
//  TabBar.swift
//  SwiftUI_CustomTabBar
//
//  Created by Samuel Huang on 26/12/2020.
//

import SwiftUI

struct TabBar: View {
    
    @State var current = "Home"
    var body: some View {
    
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView(selection: $current){
                
                Home()
                    .tag("Home")
                    
                
                Text("Message")
                    .tag("Message")
                
                Text("Account")
                    .tag("Account")
            }
            
            HStack( spacing: 0, content: {
                 
                TabButton(title: "Home", image: "home", selected: $current)
                Spacer(minLength: 0)
                TabButton(title: "Message", image: "messenger", selected: $current)
                Spacer(minLength: 0)
                TabButton(title: "Account", image: "user", selected: $current)
                
            })
            .padding(.vertical,12)
            
            .background(Color("tab"))
            .clipShape(Capsule())
            .padding(.horizontal,25)
            
        
            
        })
             
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
