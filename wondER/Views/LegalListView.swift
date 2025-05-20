import SwiftUI

struct LegalListView: View {
    @ObservedObject var viewModel = LegalListViewModel()
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(spacing: 0) {
            // Header
            HStack {
                Button(action: { presentationMode.wrappedValue.dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.green)
                        .padding()
                }
                Spacer()
                Text("LEGAL")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
                Color.clear.frame(width: 44)
            }
            .background(Color(.systemGroupedBackground))

            // List
            List {
                ForEach(viewModel.items) { item in
                    NavigationLink(destination: destinationView(for: item.destination)) {
                        HStack {
                            Text(item.title)
                                .foregroundColor(.primary)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.green)
                        }
                        .padding(.vertical, 8)
                    }
                }
            }
            .listStyle(PlainListStyle())

            Spacer()

            // Bottom Bar
            HStack {
                Image("wonder_logo") // Add this asset
                    .resizable()
                    .frame(width: 24, height: 24)
                Text("Wonder")
                    .font(.subheadline)
                Spacer()
                Text("curated by")
                    .font(.footnote)
                Image("mobbin_logo") // Add this asset
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            .padding()
            .background(Color(.secondarySystemBackground))
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

// Placeholder views for navigation
struct TermsOfServiceView: View {
    var body: some View { Text("Terms of Service") }
}
struct PrivacyPolicyView: View {
    var body: some View { Text("Privacy Policy") }
}
struct ThirdPartySoftwareView: View {
    var body: some View { Text("Third Party Software") }
} 