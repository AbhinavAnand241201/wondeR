import SwiftUI

struct ThirdPartySoftwareView: View {
    var body: some View {
        ZStack {
            Color.beigeBackground.ignoresSafeArea()
            VStack(spacing: 0) {
                WonderNavBar(title: "")
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Third Party Software")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.textBlack)
                            .padding(.top, 8)
                        Text("WONDER THIRD PARTY SOFTWARE NOTICES")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.textBlack)
                        Text("Last updated: February 2025")
                            .font(.system(size: 13))
                            .foregroundColor(.textGray)
                        Text("Wonder uses certain third party software components and libraries. This section provides notices and attributions for these components as required by their respective licenses.")
                            .font(.system(size: 14))
                            .foregroundColor(.textBlack)
                        Text("A full list of third party software and their licenses is available at our website.")
                            .font(.system(size: 14))
                            .foregroundColor(.textBlack)
                        Group {
                            Text("Visit ")
                                .font(.system(size: 14))
                                .foregroundColor(.textBlack)
                            +
                            Text("www.wonder.com/thirdparty")
                                .font(.system(size: 14))
                                .foregroundColor(.wonderGreen)
                                .underline()
                            +
                            Text(" for more details.")
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