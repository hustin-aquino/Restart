//
//  HomeView.swift
//  Restart
//
//  Created by justin.bitancor on 10/6/24.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button {
                isOnboardingViewActive = true
            } label: {
                Text("Restart")
            }

        }
    }
}

#Preview {
    HomeView()
}
