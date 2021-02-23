//
//  ResultCell.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

extension UIScreen {
    static var width = UIScreen.main.bounds.width
}

struct ResultCell: View {
    var body: some View {
        VStack(spacing: 2){
            HStack(spacing: 2){
                VStack(spacing: 2){
                    Image("image1").resizable().frame(width: UIScreen.width / 3, height: UIScreen.width / 3)
                    Image("image2").resizable().frame(width: UIScreen.width / 3, height: UIScreen.width / 3)
                }
                Image("image3").resizable().frame(width: UIScreen.width / 1.5, height: UIScreen.width / 1.5)
            }
            HStack(spacing: 2){
                Image("image2").resizable().frame(width: UIScreen.width / 3, height: UIScreen.width / 3)
                Image("image3").resizable().frame(width: UIScreen.width / 3, height: UIScreen.width / 3)
                Image("image1").resizable().frame(width: UIScreen.width / 3, height: UIScreen.width / 3)
            }
            HStack(spacing: 2){
                Image("image1").resizable().frame(width: UIScreen.width / 3, height: UIScreen.width / 3)
                Image("image2").resizable().frame(width: UIScreen.width / 3, height: UIScreen.width / 3)
                Image("image3").resizable().frame(width: UIScreen.width / 3, height: UIScreen.width / 3)
            }
            HStack(spacing: 2){
                Image("image2").resizable().frame(width: UIScreen.width / 1.5, height: UIScreen.width / 1.5)
                VStack(spacing: 2){
                    Image("image1").resizable().frame(width: UIScreen.width / 3, height: UIScreen.width / 3)
                    Image("image3").resizable().frame(width: UIScreen.width / 3, height: UIScreen.width / 3)
                }
            }
        }
    }
}

struct ResultCell_Previews: PreviewProvider {
    static var previews: some View {
        ResultCell()
    }
}
