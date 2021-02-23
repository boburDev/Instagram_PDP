//
//  ActivityCell.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct ActivityCell: View {
    
    @State var showingAlert = false
    @State private var isFollow = 0
    
    var body: some View {
        HStack{
            Image("image2")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(35)
            VStack(alignment:.leading){
                HStack{
                    Text("boburmirzo.negmatov").bold()
                }
                Text("who you might know is on Instagram")
            }
            Spacer()
            HStack{
                Button(action: {
                    isFollow = 1
                }, label: {
                    Text("Confirm").foregroundColor(.white).bold()
                })
                .frame(height: isFollow == 1 ? 0 : 30)
                .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                .background(Color.blue)
                .cornerRadius(5)
                
                Button(action: {
                    isFollow = 2
                }, label: {
                    Text("Delete")
                        .foregroundColor(.black).bold()
                })
                .frame(height: isFollow == 1 ? 0 : 30)
                .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                .border(Color.gray, width: 2)
                .cornerRadius(5)
                
                Button(action: {
                    isFollow = 1
                }, label: {
                    Text("Follow").foregroundColor(.white).bold()
                    Spacer()
                })
                .frame(width: isFollow == 1 ? 70 : 0,height: isFollow == 1 ? 30 : 0)
                .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                .background(Color.blue)
                .cornerRadius(5)
            }
        }.opacity(isFollow == 2 ? 0 : 1)
    }
}

struct ActivityCell_Previews: PreviewProvider {
    static var previews: some View {
        ActivityCell()
    }
}
