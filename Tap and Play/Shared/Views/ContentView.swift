//
//  ContentView.swift
//  Shared
//
//  Created by Thongchai Subsaidee on 11/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var gameSettingVM = GameSettingViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Score: \(gameSettingVM.score)")
                    .padding()
                NavigationLink("Play", destination: PlayView())
            }
        }
        .environmentObject(gameSettingVM)
        
    }
}

struct ContentView_Previews: PreviewProvider {
        
    static var previews: some View {
        ContentView()
    }
}
