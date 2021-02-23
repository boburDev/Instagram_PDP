//
//  CreateNewActivity.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct CreateNewActivity: View {
    var img_url = "image1"
    var body: some View {
        VStack{
            VStack{
                Image(systemName: "plus")
                    .resizable().frame(width: 30, height: 30)
                    .cornerRadius(35)
                    
            }
            .frame(width: 70, height: 70)
            .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.black, lineWidth: 1))
            Text("New")
        }

    }
}

struct CreateNewActivity_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewActivity()
    }
}
