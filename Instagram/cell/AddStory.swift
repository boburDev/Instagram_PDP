//
//  AddStory.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct AddStory: View {
    
    var img_url = "image1"
    var body: some View {
        VStack{
            
            ZStack(alignment: .bottomTrailing){
                Image(img_url)
                    .resizable().frame(width: 70, height: 70)
                    .cornerRadius(35)
                Image("ic_plus").resizable().frame(width: 50, height: 24).offset(x: 15, y: 2).padding(.leading, -28).padding(.top, -3)
            }
            Text("Your stury").font(Font.system(size: 13.5))
        }.padding(.trailing,10).frame(height: 100)
    }
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
