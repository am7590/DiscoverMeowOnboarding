//
//  OnboardingArrowView.swift
//  DiscoverMeowOnboarding
//
//  Created by Alek Michelson on 11/5/22.
//

import SwiftUI

enum OnboardingArrow {
    case right, left, both
}

struct OnboardingArrowView: View {
    
    var arrow: OnboardingArrow
    
    var body: some View {
        switch arrow {
        case .right:
            rightArrow
        case .left:
            leftArrow
        case .both:
            bothArrows
        }
    }
}

extension OnboardingArrowView {
    
    struct Constants {
        static let rightArrow = "arrow.right"
        static let leftArrow = "arrow.left"
    }
    
    @ViewBuilder
    public var rightArrow: some View {
        HStack {
            Spacer()
            Image(systemName: Constants.rightArrow)
                .onboardingButton()
        }
    }
    
    @ViewBuilder
    public var leftArrow: some View {
        HStack {
            Image(systemName: Constants.leftArrow)
                .onboardingButton()
            Spacer()
        }
    }
    
    @ViewBuilder
    public var bothArrows: some View {
        HStack {
            Image(systemName: Constants.leftArrow)
                .onboardingButton()
            Spacer()
            Image(systemName: Constants.rightArrow)
                .onboardingButton()
        }
    }
}


// MARK: Button modifier

struct OnboardingButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Circle().fill(.green)
                .frame(width: 50, height: 50))
            .padding(50)
    }
}

extension View {
    func onboardingButton() -> some View {
        modifier(OnboardingButtonModifier())
    }
}

