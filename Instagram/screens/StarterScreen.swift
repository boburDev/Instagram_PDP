//
//  StarterScreen.swift
//  Instagram
//
//  Created by Boburmirzo on 2/22/21.
//

import SwiftUI

struct StarterScreen: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        
        if self.status.userid != nil {
            HomeScreen()
        }else {
            SignInScreen()
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
            .environmentObject(Status())
    }
}
