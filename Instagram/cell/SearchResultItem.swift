//
//  SearchResultItem.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct SearchResultItem: View {
    @State var search = ""
    var body: some View {
        VStack{
            TextField("Search", text: $search)
                .frame(height: 45)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
            Spacer()
            HStack{
                
            }
        }
    }
}

struct SearchResultItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultItem()
    }
}
