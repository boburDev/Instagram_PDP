//
//  HomeScreen.swift
//  Instagram
//
//  Created by Boburmirzo on 2/22/21.
//

import SwiftUI

struct HomeScreen: View {
    @State var screen = "timeline"
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
     
    var body: some View {
        VStack{
            Spacer()
            
            if screen == "timeline" {
                TimeLineScreen()
            }else if screen == "search" {
                SearchingScreen()
            }else if screen == "add_post" {
                AddPostScrren()
            }else if screen == "events" {
                EventsScreen()
            }else {
                ProfileScreen()
            }
            
            Spacer()
            VStack{
                HStack{
                    Button(action: {
                        screen = "timeline"
                        
                    }, label: {
                        Image("ic_main")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                    Spacer()
                    Button(action: {
                        screen = "search"
                        
                    }, label: {
                        Image("ic_search")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                    Spacer()
                    Button(action: {
                        screen = "events"
                    }, label: {
                        Image("ic_like")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                    Spacer()
                    Button(action: {
                        screen = "profile"
                        
                    }, label: {
                        Image("image1")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .cornerRadius(35)
                    })
                }
                .padding(.leading,40)
                .padding(.trailing, 40)
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
