//
//  InfoView.swift
//  My Card
//
//  Created by Administrator on 24/06/2023.
//

import SwiftUI

struct InfoView : View {
    
    let name: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 24)
            .fill(Color("backgroundInfo"))
            .frame(height: 48)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color("icon"))
                Text(name)
                    .foregroundColor(Color("text"))
            })
            .shadow(radius: 16)
            .padding()
    }
}


struct CInfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(name: "0868754872", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}

