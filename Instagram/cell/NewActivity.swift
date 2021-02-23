//
//  NewActivity.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct NewActivity: View {
    var img_url = "image1"
    var body: some View {
        VStack{
            Image(img_url)
                .resizable().frame(width: 70, height: 70)
                .cornerRadius(35)
        }.frame(height: 100)
    }
}

struct NewActivity_Previews: PreviewProvider {
    static var previews: some View {
        NewActivity()
    }
}
