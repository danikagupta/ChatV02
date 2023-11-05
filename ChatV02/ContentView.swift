//
//  ContentView.swift
//  ChatV02
//
//  Created by Amit Gupta on 11/4/23.
//

import SwiftUI

struct MultiTabView: View {
    var body: some View {
        TabView{
            Tab1View()
                .tabItem{
                    Label("Web page",systemImage: "eyes.inverse")
                }
            ChatGPTView(vm: ViewModel(api: ChatGPTAPI(apiKey: getOpenAIAPIKey())))
                .tabItem{
                    Label("Chat",systemImage: "list.number")
                }
            Tab3View()
                .tabItem{
                    Label("Tab 3",systemImage: "keyboard")
                }
        }
    }
    
    func getOpenAIAPIKey() -> String {
        return "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"
    }
}

struct Tab1View: View {
    var body: some View {
        Text("Page 1")
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct Tab2View: View {
    var body: some View {
        Text("Page 2")
    }
}

struct Tab3View: View {
    var body: some View {
        Text("Page 3")
    }
}

struct MultiTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            MultiTabView()
        }
    }
}

