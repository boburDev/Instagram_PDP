//
//  SearchingScreen.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct SearchingScreen: View {
    @State var text = ""
    var body: some View {
        VStack{
            HStack{
                ZStack(alignment: .topLeading){
                    TextField("Search", text: $text)
                        .frame(height:45)
                        .padding(.leading,30)
                        .padding(.trailing,10)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.leading, 6)
                        .padding(.trailing, 8)
                    Image("ic_search").offset(x: 10,y:12).opacity(0.2)
                }
                Image(systemName: "camera")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.trailing, 20)
            }.padding(.bottom, 10)
            ScrollView{
                VStack(spacing:0){
                    ForEach(0..<13) { _ in
                        ResultCell()
                    }
                }
            }
        }
    }
}

struct SearchingScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchingScreen()
    }
}
