//
//  KiwiView.swift
//  SwiftUINavigationDeepDive
//
//  Created by Alex Nagy on 19.02.2023.
//

import SwiftUI
import kindaSwiftUI

struct KiwiView: View {
    
    @EnvironmentObject private var router: Router<Destination>
    
    var body: some View {
        List {
            Button("Pop") {
                router.pop()
            }
        }
        .navigationTitle("🥝")
    }
}

