//
//  Page.swift
//  DiscoverMeowOnboarding
//
//  Created by Alek Michelson on 11/5/22.
//

import SwiftUI

enum Page: Identifiable, Equatable {
    case welcome, connectToSnap, verification
    
    var id: UUID { UUID() }
    
    var title: String {
        switch self {
        case .welcome:
            return "Welcome to DiscoverMeow"
        case .connectToSnap:
            return "Create a profile"
        case .verification:
            return "Verification"
        }
    }
    
    var description: String {
        switch self {
        case .welcome:
            return "welcome description"
        case .connectToSnap:
            return "connectToSnap description"
        case .verification:
            return "verification description"
        }
    }
    
    var image: String {
        switch self {
        case .welcome:
            return "logo"
        case .connectToSnap:
            return "logo"
        case .verification:
            return "logo"
        }
    }
    
    var bodyView: some View {
        switch self {
        case .welcome:
            return red
        case .connectToSnap:
            return red
        case .verification:
            return red
        }
    }
    
    var tag: Int {
        switch self {
        case .welcome:
            return 0
        case .connectToSnap:
            return 1
        case .verification:
            return 2
        }
    }
    
    var arrowConfig: OnboardingArrow {
        switch self {
        case .welcome:
            return .right
        case .connectToSnap:
            return .both
        case .verification:
            return .left
        }
    }
}


// MARK: Dummy views

@ViewBuilder
public var red: some View {
    ZStack {
        Color.red
    }
}
