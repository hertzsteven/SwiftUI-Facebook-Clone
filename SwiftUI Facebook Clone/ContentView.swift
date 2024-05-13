//
//  ContentView.swift
//  SwiftUI Facebook Clone
//
//  Created by Steven Hertz on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:16) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .background {
                    LinearGradient(colors: [.blue, .red, .yellow], 
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .padding(12)
                    .foregroundStyle(.white)
                    .background {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(.cyan)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        
                    }
            })
            
//             ZStack {
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(.cyan)

//                    .opacity(0.8)
                    
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
//             }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
