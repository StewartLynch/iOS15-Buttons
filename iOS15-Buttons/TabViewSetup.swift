//
//  ContentView.swift
//  iOS15-Buttons
//
//  Created by Stewart Lynch on 2021-09-06.
//

import SwiftUI

struct TabViewSetup: View {
    @State private var selection = 1
    var tintColor: Color? {
        switch selection {
        case 1:
            return .teal
        case 2:
            return .cyan
        case 3:
            return .indigo
        case 5:
            return .mint
        case 6:
            return .brown
        default:
            return nil
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                TabView(selection: $selection) {
                    Button_Styles().tag(1)
                    Border_Shapes().tag(2)
                    Control_Size().tag(3)
                    Button_Roles().tag(4)
                    Location_Button().tag(5)
                    Toggle_Butttons().tag(6)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                HStack {
                    ForEach(1..<7) { index in
                        Button {
                            withAnimation {
                                selection = index
                            }
                        } label : {
                            Image(systemName: "\(index).square")
                        }
                        .disabled(index == selection)
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(tintColor)
            }
        }
    }
}

struct TabViewSetup_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSetup()
    }
}
