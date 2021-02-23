//
//  ItemPost.swift
//  Instagram
//
//  Created by Boburmirzo on 2/22/21.
//

import SwiftUI

struct ItemPost: View {
    
    var img_url = "image1"
    var img_profile = "image1"
    var username = "Bobur"
    var location = "Toshkent, PDP"
    var title = "Bugun juda ajoyib kun buldi instagram clonenini qilib tugatyapman"
    var description = "Bugun juda ajoyib kun buldi instagram clonenini qilib tugatyapman"
    var count_of_likes = 200
    var comment_count = 320
    var more = 2000000000
    var open_more = 0
    
    @State var comment_text = ""
    @State var isFollow = false
    @State var isLiked = false
    @State var isMarked = false
    var body: some View {
        VStack{
            HStack{
                Image(img_profile)
                    .resizable().frame(width: 40, height: 40)
                    .cornerRadius(35)
                    .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.red, lineWidth: 2))
                HStack{
                    VStack(alignment: .leading){
                        HStack{
                            Text(username)
                            Button(action: {
                                isFollow.toggle()
                            }, label: {
                                Text(isFollow ? "Following" : "Follow")
                                    .font(.system(size:16.5))
                                    .bold()
                                    .foregroundColor(isFollow ? .black : .blue)
                            })
                        }
                        Text(location).font(.system(size:12.5))
                    }
                    
                    
                }
                Spacer()
                Image("ic_more")
            }
         VStack{
                TabView{
                    Image(img_url)
                        .resizable()
                        .frame(height: 300)
                        .scaledToFit()
                        .padding(.leading, -20)
                        .padding(.trailing, -20)
                    Image(img_url)
                        .resizable()
                        .frame(height: 300)
                        .scaledToFit()
                        .padding(.leading, -20)
                        .padding(.trailing, -20)
                    Image(img_url)
                        .resizable()
                        .frame(height: 300)
                        .scaledToFit()
                        .padding(.leading, -20)
                        .padding(.trailing, -20)
                }
//                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .tabViewStyle(PageTabViewStyle())
//                .rotationEffect(Angle(degrees: 90))
            }
            HStack{
                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Image(isLiked ? "ic_liked" : "ic_like")
                })
                Button(action: {
                    
                }, label: {
                    Image(systemName: "message").foregroundColor(.black)
                })
                Button(action: {
                    
                }, label: {
                    Image("ic_send")
                })
                Spacer()
                Button(action: {
                    isMarked.toggle()
                }, label: {
                    Image(isMarked ? "ic_marked" : "ic_mark")
                })
            }.padding(.bottom, 10)
            
            HStack{
                VStack(alignment: .leading){
                    HStack(alignment:.top){
                        Text("\(username):").bold()
                            Text("\(title) \(title.count >= 60 ? "...more" : "more")")
                                .lineLimit(title.count >= 60 ? 1 : more)
                                .padding(.bottom,10)
                        }
                    
                    Button(action: {
                        
                    }, label: {
                        Text("View all \(comment_count) comments").foregroundColor(.gray)
                    })
                    Text("1 day ago").font(.system(size: 13.5)).foregroundColor(.gray)
                    HStack{
                        Image(img_profile)
                            .resizable().frame(width: 30, height: 30)
                            .cornerRadius(35)
                        TextField("Add a comment...", text: $comment_text)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image("ic_liked").resizable().frame(width: 20, height: 20)
                        })
                        Button(action: {
                            
                        }, label: {
                            Image("ic_liked").resizable().frame(width: 20, height: 20)
                        })
                        Button(action: {
                            
                        }, label: {
                            Image("ic_liked").resizable().frame(width: 20, height: 20)
                        })
                    }
                }
                Spacer()
            }
        }.padding(.bottom,20)
    }
}

struct ItemPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemPost()
    }
}
