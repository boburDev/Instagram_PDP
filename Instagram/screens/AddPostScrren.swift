//
//  AddPostScrren.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct AddPostScrren: View {
    @State var isShowPhotoLibrary = false
    @State var image = UIImage()
     
    var body: some View {
        VStack {
 
            Image(uiImage: self.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
 
        }.sheet(isPresented: $isShowPhotoLibrary) {
            ImagePicker(sourceType: .photoLibrary)
        }
    }
}

struct AddPostScrren_Previews: PreviewProvider {
    static var previews: some View {
        AddPostScrren()
    }
}
