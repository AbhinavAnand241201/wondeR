import SwiftUI

struct LegalListView: View {
    @ObservedObject var viewModel = LegalListViewModel()
    var body: some View {
        ZStack {
            Color.beigeBackground.ignoresSafeArea()
            VStack(spacing: 0) {
                WonderNavBar(title: "LEGAL")
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(viewModel.items.indices, id: \ .self) { idx in
                        NavigationLink(destination: destinationView(for: viewModel.items[idx].destination)) {
                            HStack {
                                Text(viewModel.items[idx].title)
                                    .font(.system(size: 15))
                                    .foregroundColor(.textBlack)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.wonderGreen)
                            }
                            .padding(.vertical, 18)
                            .padding(.horizontal)
                        }
                        if idx < viewModel.items.count - 1 {
                            Divider().background(Color.gray.opacity(0.3))
                        }
                    }
                }
                Spacer()
                WonderFooter()
            }
        }
        .navigationBarHidden(true)
    }
    @ViewBuilder
    private func destinationView(for destination: LegalDestination) -> some View {
        switch destination {
        case .termsOfService:
            TermsOfServiceView()
        case .privacyPolicy:
            PrivacyPolicyView()
        case .thirdPartySoftware:
            ThirdPartySoftwareView()
        }
    }
}

struct WonderNavBar: View {
    var title: String
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.wonderGreen)
                    .padding(.leading, 16)
                Spacer()
                Text(title)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.textBlack)
                Spacer()
                Button(action: {}) {
                    Text("Order")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(.wonderGreen)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 6)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(16)
                }
                .padding(.trailing, 16)
            }
            .frame(height: 56)
            .background(Color.beigeBackground)
        }
    }
}

struct WonderFooter: View {
    var body: some View {
        HStack {
            Image("wonder_logo")
                .resizable()
                .frame(width: 24, height: 24)
            Text("Wonder")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.wonderGreen)
            Spacer()
            Text("curated by MOBBIN")
                .font(.system(size: 13))
                .foregroundColor(.textBlack)
            Image("mobbin_logo")
                .resizable()
                .frame(width: 24, height: 24)
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.black.opacity(0.03))
    }
} 