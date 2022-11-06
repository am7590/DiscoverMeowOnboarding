//
//  ContentView.swift
//  DiscoverMeowOnboarding
//
//  Created by Alek Michelson on 11/5/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        TabView(selection: $viewModel.pageIndex) {
            ForEach(viewModel.pages) { page in
                VStack {
                    Spacer()
                    PageView(page: page)
                    Spacer()
                    OnboardingArrowView(viewModel: viewModel, arrow: page.arrowConfig)
                        .onTapGesture {
                            viewModel.incrementPage()
                        }
                    Spacer()
                }
                .tag(page.tag)
            }
        }
        .animation(.default, value: viewModel.pageIndex)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .tabViewStyle(PageTabViewStyle())
        .onAppear {
            viewModel.setupDotAppearance()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: OnboardingViewModel())
    }
}
