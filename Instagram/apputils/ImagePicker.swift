//
//  ImagePicker.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import Foundation
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {

    var sourceType: UIImagePickerController.SourceType = .photoLibrary

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {

        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType

        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }
}
