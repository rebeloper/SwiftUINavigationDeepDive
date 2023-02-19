//
//  JunkFoodView.swift
//  SwiftUINavigationDeepDive
//
//  Created by Alex Nagy on 19.02.2023.
//

import SwiftUI
import kindaSwiftUI

struct JunkFoodView: View {
    
    let title: String
    
    var body: some View {
        List {
            Button("Push 🍫") {
                
            }
            
            Button("Pop") {
                
            }
            
            Button("Pop the last 2") {
                
            }
        }
        .navigationTitle(title)
    }
}
