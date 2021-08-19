//
//  ContentView.swift
//  DisneySplashScreen
//
//  Created by Michele Manniello on 19/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        YourBase View..
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Image("iJustine")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 480)
                        .cornerRadius(15)
                    
                    Text("iJustine")
                        .font(.title.bold())
                        
                }
                .padding()
            }
            .navigationTitle("Latest")
        }
//        Use Overlay since ZStack having issues with animation..
        .overlay(SplashScreen())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
