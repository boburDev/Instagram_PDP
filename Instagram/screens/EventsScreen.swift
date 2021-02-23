//
//  EventsScreen.swift
//  Instagram
//
//  Created by Boburmirzo on 2/23/21.
//

import SwiftUI

struct EventsScreen: View {
    var body: some View {
        VStack(spacing:0){
            NavigationView{
                VStack{
                    ScrollView{
                    HStack{
                        ZStack(alignment:.topTrailing){
                            Image("image1")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(35)
                            ZStack{
                                Text("")
                                    .frame(width: 25, height: 25)
                                    .background(Color.red)
                                    .cornerRadius(35)
                                Text("99")
                                    .foregroundColor(.white)
                                    .font(.system(size: 13.5))
                                    .bold()
                            }
                        }
                        VStack(alignment:.leading){
                            Text("Follow Requests")
                            Text("Approve or ignore requests")
                        }
                        Spacer()
                    }
                    HStack{
                        Text("This Month")
                            .font(.system(size: 20))
                            .bold()
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                    
                    
                        VStack{
                            ForEach(0..<14){_ in
                                ActivityCell()
                            }
                        }
                    HStack{
                        Text("This Week")
                            .font(.system(size: 20))
                            .bold()
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                        VStack{
                            ForEach(0..<15){_ in
                                ActivityCell()
                            }
                        }
                    }
                    Spacer()
                }
                
                    .navigationBarItems(leading: Text("Activity").font(.system(size: 35)).bold())
            }
        }.padding(.leading,10).padding(.trailing,10)
    }
}

struct EventsScreen_Previews: PreviewProvider {
    static var previews: some View {
        EventsScreen()
    }
}
