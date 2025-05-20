import SwiftUI

struct PrivacyPolicyView: View {
    var body: some View {
        ZStack {
            Color.beigeBackground.ignoresSafeArea()
            VStack(spacing: 0) {
                WonderNavBar(title: "")
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Privacy Policy")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.textBlack)
                            .padding(.top, 8)
                        Text("WONDER PRIVACY POLICY")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.textBlack)
                        Text("Last updated: February 2025")
                            .font(.system(size: 13))
                            .foregroundColor(.textGray)
                        Text("Your privacy is important to Wonder. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our Service. Please read this policy carefully.")
                            .font(.system(size: 14))
                            .foregroundColor(.textBlack)
                        Text("By using the Service, you consent to the data practices described in this policy. If you do not agree with the terms of this Privacy Policy, please do not access the Service.")
                            .font(.system(size: 14))
                            .foregroundColor(.textBlack)
                        Group {
                            Text("For more information, visit our website at ")
                                .font(.system(size: 14))
                                .foregroundColor(.textBlack)
                            +
                            Text("www.wonder.com")
                                .font(.system(size: 14))
                                .foregroundColor(.wonderGreen)
                                .underline()
                            +
                            Text(" or contact us at privacy@wonder.com.")
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