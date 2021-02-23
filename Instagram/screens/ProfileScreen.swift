//
//  ProfileScreen.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        VStack{
            HStack{
                Image("image1")
                    .resizable().frame(width: 120, height: 120)
                    .cornerRadius(60)
                HStack{
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        VStack{
                            Text("1")
                                .font(.system(size: 22))
                                .bold()
                            Text("Post")
                        }
                    }).foregroundColor(.black)
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        VStack{
                            Text("49")
                                .font(.system(size: 22))
                                .bold()
                            Text("Followers")
                        }
                    }).foregroundColor(.black)
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        VStack{
                            Text("127")
                                .font(.system(size: 22))
                                .bold()
                            Text("Following")
                        }
                    }).foregroundColor(.black)
                }
            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            VStack{
                HStack{
                    VStack(alignment:.leading){
                        Text("Boburmirzo")
                        Text("I'm IOS developer from Uzbekistan")
                        Text("t.me/boburmirzo_negmatov")
                    }.padding(.leading,13)
                    Spacer()
                }
                HStack{
                    Button(action: {}, label: {
                        Text("Edit Profile")
                    })
                    .frame(width: UIScreen.width / 2.3, height:30)
                    .border(Color.gray, width: 1)
                    Spacer()
                    Button(action: {}, label: {
                        Text("Saved")
                    })
                    .frame(width: UIScreen.width / 2.3, height:30)
                    .border(Color.gray, width: 1)
                    
                }.padding().foregroundColor(.black)
                HStack{
                    VStack(alignment:.leading){
                        Text("Story Highlights").bold()
                        Text("Leep your favorite stories on your profile")
                    }
                    Spacer()
                    Image(systemName: "clock")
                    Spacer()
                }.padding(.leading,15)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        CreateNewActivity().offset(y:18)
                        ForEach(0..<14) { _ in
                            NewActivity()
                        }
                    }.frame(height: 150)
                    .offset(y:-30)
                }.frame(height: 150)
            }
            Divider()
            Spacer()
            List{
                ForEach(0..<8){ _ in
                    HStack{
                        ForEach(0..<3){ _ in
                            UserPosts()
                        }
                    }
                }
            }.offset(x:-10)
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
