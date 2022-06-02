//
//  ContentView.swift
//  R-tutorial
//
//  Created by tsubasa.kogoma on 2022/06/02.
//

import SwiftUI

struct ContentView: View {
    @State var isShow = false
    
    var body: some View {
        ScrollView {
            VStack {
                Button("フォントを変更する", action: {
                    isShow.toggle()
                })
                
                if isShow {
                    Text("Noto Serif JP Black").font(.custom(R.font.notoSerifJPBlack.fontName, size: 15))
                } else {
                    Text("Large title").font(.largeTitle)
                }
                
                Image(R.image.thumbnail_landmark_byodoin_hououzou.name)
                Image(R.image.tsutenkaku_osaka_red.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
