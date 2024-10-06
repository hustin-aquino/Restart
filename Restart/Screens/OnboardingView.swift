//
//  OnboardingView.swift
//  Restart
//
//  Created by justin.bitancor on 10/6/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button {
                isOnboardingViewActive = false
            } label: {
                Text("Start")
            }

        }
    }
}

#Preview {
    OnboardingView()
}
