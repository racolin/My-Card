//
//  ContentView.swift
//  My Card
//
//  Created by Administrator on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea(.all)
            VStack {
                
                Image("portrait")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 180, alignment: .top)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(.white, in: Circle().stroke(lineWidth: 6))
                
                Text("Phan Trung Tin")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .font(.custom("Pacifico-Regular", size: 36))
                
                Text("Flutter Developer")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .font(.system(size: 24))
                
                Divider()
                
                InfoView(name: "0868754872", imageName: "phone.fill")
                
                InfoView(name: "phantrungtin01@gmail", imageName: "envelope.fill")
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
