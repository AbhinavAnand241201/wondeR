import SwiftUI

struct TermsOfServiceView: View {
    var body: some View {
        ZStack {
            Color.beigeBackground.ignoresSafeArea()
            VStack(spacing: 0) {
                WonderNavBar(title: "")
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Terms of Service")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.textBlack)
                            .padding(.top, 8)
                        Text("WONDER TERMS OF SERVICE")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.textBlack)
                        Text("Last updated: February 2025")
                            .font(.system(size: 13))
                            .foregroundColor(.textGray)
                        Text("Welcome to Wonder and our Terms of Service (\"Terms\"). These Terms are important and affect your legal rights, so please read them carefully.")
                            .font(.system(size: 14))
                            .foregroundColor(.textBlack)
                        Text("IMPORTANT NOTICE: THESE TERMS ARE SUBJECT TO BINDING ARBITRATION AND A WAIVER OF CLASS ACTION RIGHTS AS DETAILED IN THE ARBITRATION AND CLASS ACTION WAIVER SECTION BELOW.")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.textBlack)
                        Group {
                            Text("Wonder Group, Inc., doing business as \"Wonder\" (\"Wonder,\" \"we,\" \"our\") operates the website located at ")
                                .font(.system(size: 14))
                                .foregroundColor(.textBlack)
                            +
                            Text("www.wonder.com")
                                .font(.system(size: 14))
                                .foregroundColor(.wonderGreen)
                                .underline()
                            +
                            Text(" (\"Site\") and the Wonder mobile applications (\"App\") (each and together, and along with all content displayed and services provided therein, the \"Service\"). These Terms govern your access to and use of the Service. You accept and agree to these Terms by doing any one of the following:")
                                .font(.system(size: 14))
                                .foregroundColor(.textBlack)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                }
                WonderFooter()
            }
        }
        .navigationBarHidden(true)
    }
} 