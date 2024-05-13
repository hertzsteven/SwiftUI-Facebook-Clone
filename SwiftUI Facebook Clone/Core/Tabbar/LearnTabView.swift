//
//  LearnTabView.swift
//  SwiftUI Facebook Clone
//
//  Created by Steven Hertz on 5/12/24.
//

/**
 - change color of tab items with tint
 - use the tag modifier to move to new tab programmaticly
 - capture tab bar changes
 -
 */


import SwiftUI

struct LearnTabView : View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            VStack(spacing: 20) {
                Image(.car1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(10)
                    .padding()
            
//                    .containerRelativeFrame([.horizontal]) { len, axe in
//                            0.25
//                    }
                Text("First Screen")
                Button("Go to Tab 2") {
                    selectedTab = 2
                }
            }
            .tabItem {
                Text("First Screen")
            
                Image(systemName: "star")
                    .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
            }
            .tag(1)
            
            VStack {
                Text("Second Screen")
            }
            .tabItem {
                Label("Second Screen", systemImage: "moon")
            }
            .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
            .tag(2)
            .badge(3)
        }
        .onChange(of: selectedTab) { oldValue, newValue in
            print("old value \(oldValue) new value \(newValue)")
        }
        .onAppear {
//            UITabBar.appearance().barTintColor = .red
            selectedTab = 1
        }
        .font(.title)
        .tint(.orange)
    }
}

#Preview {
    LearnTabView()
}
