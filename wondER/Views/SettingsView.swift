import SwiftUI

struct SettingsView: View {
    @State private var pushNotificationsOn = true
    @State private var textMessagesOn = false
    
    var body: some View {
        ZStack {
            Color.beigeBackground.ignoresSafeArea()
            VStack(spacing: 0) {
                WonderSettingsNavBar()
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        // Delivery Updates Section
                        Text("Delivery updates are core to the Wonder experience and can't be turned off. If you select Text Message, message and data rates may apply.")
                            .font(.system(size: 13))
                            .foregroundColor(.textGray)
                            .padding(.horizontal)
                            .padding(.top, 8)
                            .padding(.bottom, 8)
                        Divider().background(Color.gray.opacity(0.2))
                        // Marketing Section
                        Text("MARKETING")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundColor(.textBlack)
                            .padding(.horizontal)
                            .padding(.top, 16)
                        VStack(spacing: 0) {
                            WonderToggleRow(title: "Push Notifications", isOn: $pushNotificationsOn)
                            Divider().background(Color.gray.opacity(0.2))
                            WonderToggleRow(title: "Text Message", isOn: $textMessagesOn)
                        }
                        .padding(.horizontal)
                        .padding(.top, 4)
                        if textMessagesOn {
                            MarketingLegalText()
                                .padding(.horizontal)
                                .padding(.top, 4)
                        }
                        Divider().background(Color.gray.opacity(0.2)).padding(.top, 16)
                        // Legal Section
                        Text("LEGAL")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundColor(.textBlack)
                            .padding(.horizontal)
                            .padding(.top, 16)
                        NavigationLink(destination: EmptyView()) {
                            HStack {
                                Text("Legal")
                                    .font(.system(size: 15))
                                    .foregroundColor(.textBlack)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.wonderGreen)
                            }
                            .padding(.vertical, 12)
                            .padding(.horizontal)
                        }
                        Divider().background(Color.gray.opacity(0.2))
                        // Account Section
                        Text("ACCOUNT")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundColor(.textBlack)
                            .padding(.horizontal)
                            .padding(.top, 16)
                        NavigationLink(destination: EmptyView()) {
                            HStack {
                                Text("Delete account")
                                    .font(.system(size: 15))
                                    .foregroundColor(.textRed)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.wonderGreen)
                            }
                            .padding(.vertical, 12)
                            .padding(.horizontal)
                        }
                        Divider().background(Color.gray.opacity(0.2))
                        Spacer(minLength: 24)
                    }
                }
                WonderFooter()
            }
        }
        .navigationBarHidden(true)
    }
}

struct WonderSettingsNavBar: View {
    var body: some View {
        ZStack {
            Color.beigeBackground.ignoresSafeArea(edges: .top)
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.wonderGreen)
                    .padding(.leading, 16)
                Spacer()
                Text("Wonder")
                    .font(.custom("Snell Roundhand", size: 24))
                    .foregroundColor(.wonderGreen)
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
        }
    }
}

struct WonderToggleRow: View {
    let title: String
    @Binding var isOn: Bool
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 15))
                .foregroundColor(.textBlack)
            Spacer()
            Toggle("", isOn: $isOn)
                .labelsHidden()
                .toggleStyle(SwitchToggleStyle(tint: .wonderGreen))
        }
        .padding(.vertical, 12)
    }
}

struct MarketingLegalText: View {
    var body: some View {
        Group {
            Text("By turning on this option, you agree to receive recurring and automated marketing messages from Wonder. Message & data rates may apply. View ")
                .font(.system(size: 13))
                .foregroundColor(.textGray)
            + Text("Terms & Conditions")
                .font(.system(size: 13))
                .foregroundColor(.wonderGreen)
                .underline()
            + Text(" and our ")
                .font(.system(size: 13))
                .foregroundColor(.textGray)
            + Text("Privacy Policy")
                .font(.system(size: 13))
                .foregroundColor(.wonderGreen)
                .underline()
            + Text(".")
                .font(.system(size: 13))
                .foregroundColor(.textGray)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsView()
        }
    }
} 