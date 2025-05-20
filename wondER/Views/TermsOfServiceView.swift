import SwiftUI

struct TermsOfServiceView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Header
            HStack {
                Button(action: { /* Navigation back handled by NavigationView */ }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                        .padding()
                }
                Spacer()
                Image("wonder_logo") // Add this asset
                    .resizable()
                    .frame(width: 32, height: 32)
                Spacer()
                Button(action: { /* Order action */ }) {
                    Text("Order")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.green)
                        .cornerRadius(8)
                }
            }
            .padding(.top, 8)
            .padding(.bottom, 8)
            .background(Color("WonderGreen", bundle: nil).opacity(1.0))

            // Title
            VStack(alignment: .leading, spacing: 8) {
                Text("Terms of Service")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Wonder Terms of Service")
                    .font(.headline)
                Text("Last updated: February 2025")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(Color(.systemGroupedBackground))

            // Content
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Welcome to Wonder and our Terms of Service (\"Terms\"). These Terms are important and affect your legal rights, so please read them carefully.")
                    Text("IMPORTANT NOTICE: THESE TERMS ARE SUBJECT TO BINDING ARBITRATION AND A WAIVER OF CLASS ACTION RIGHTS AS DETAILED IN THE ARBITRATION AND CLASS ACTION WAIVER SECTION BELOW.")
                        .fontWeight(.semibold)
                    Text("Wonder Group, Inc., doing business as Wonder (\"Wonder,\" \"we,\" \"our\"), operates the website located at www.wonder.com (\"Site\") and the Wonder mobile applications (\"App\") (each and together, and along with all content displayed and services provided therein, the \"Service\"). These Terms govern your access to and use of the Service. You accept and agree to these Terms by doing any one of the following:")
                    // Add more content as needed
                }
                .padding()
            }

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
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
} 