//
//  TimeLineScreen.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct TimeLineScreen: View {
    var body: some View {
        VStack{
            NavigationView{
                List{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            AddStory()
                            ForEach(0..<13) { _ in
                                ItemStory()
                            }
                        }
                    }.frame(height: 100).padding(.leading,-15).padding(.trailing,-20)
                    ScrollView{
                        VStack{
                            ForEach(0..<13) { _ in
                                ItemPost()
                            }
                        }
                    }.frame(width: UIScreen.main.bounds.width).offset(x: -20)
                }.listStyle(PlainListStyle())
                
                
                
                .navigationBarItems(
                    leading: Text("Instagram")
                        .font(.title)
                        .bold()
                    ,
                    trailing: Button(action: {
                        
                    }, label: {
                        Image(systemName: "bolt.horizontal.icloud")
                            .resizable().frame(width: 30, height: 25).foregroundColor(.black)
                    }))
                .navigationBarTitle("", displayMode: .inline)
            }
        }
    }
}

struct TimeLineScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineScreen()
    }
}
