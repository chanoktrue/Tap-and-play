//
//  PlayView.swift
//  Tap and Play (iOS)
//
//  Created by Thongchai Subsaidee on 11/7/2564 BE.
//

import SwiftUI

struct PlayView: View {
    
    @EnvironmentObject var gameSettingVM: GameSettingViewModel
    
    var body: some View {
        Text("Play: \(gameSettingVM.score)")
            .onTapGesture {
                gameSettingVM.score += 1
            }
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView()
    }
}
