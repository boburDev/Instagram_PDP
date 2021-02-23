//
//  ItemStory.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct ItemStory: View {
    var name = "Boburmirzo"
    var img_url = "image1"
    var body: some View {
        VStack{
            Image(img_url)
                .resizable().frame(width: 70, height: 70)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.red, lineWidth: 2))
            Text(name).font(Font.system(size: 13.5))
        }.padding(.trailing,10).frame(height: 100)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
