import SwiftUI

struct SettingsView: View {
    @State private var pushNotificationsOn = true
    @State private var textMessagesOn = false
    
    var body: some View {
        ZStack {
            Color.beigeBackground.ignoresSafeArea()
            VStack(spacing: 0) {
                WonderNavBar(title: "SETTINGS")
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        // Delivery Updates Section
                        Text("Delivery updates are core to the Wonder experience and can't be turned off. If you select Text Message, message and data rates may apply.")
                            .font(.system(size: 13))
                            .foregroundColor(.textGray)
                            .padding(.horizontal)
                            .padding(.top, 8)
                            .padding(.bottom, 8)
                        Divider().background(Color.gray.opacity(0.3))
                        // Marketing Section
                        Text("MARKETING")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundColor(.textBlack)
                            .padding(.horizontal)
                            .padding(.top, 16)
                        VStack(spacing: 0) {
                            WonderToggleRow(title: "Push Notifications", isOn: $pushNotificationsOn)
                            Divider().background(Color.gray.opacity(0.3))
                            WonderToggleRow(title: "Text Message", isOn: $textMessagesOn)
                        }
                        .padding(.horizontal)
                        .padding(.top, 4)
                        if textMessagesOn {
                            Text("By turning on this option, you agree to receive recurring and automated marketing messages from Wonder. Message & data rates may apply. View ")
                                .font(.system(size: 13))
                                .foregroundColor(.textGray)
                                +
                            Text("Terms & Conditions")
                                .font(.system(size: 13))
                                .foregroundColor(.wonderGreen)
                                .underline()
                                +
                            Text(" and our ")
                                .font(.system(size: 13))
                                .foregroundColor(.textGray)
                                +
                            Text("Privacy Policy")
                                .font(.system(size: 13))
                                .foregroundColor(.wonderGreen)
                                .underline()
                                +
                            Text(".")
                                .font(.system(size: 13))
                                .foregroundColor(.textGray)
                            .padding(.horizontal)
                            .padding(.top, 4)
                        }
                        Divider().background(Color.gray.opacity(0.3)).padding(.top, 16)
                        // Legal Section
                        Text("LEGAL")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundColor(.textBlack)
                            .padding(.horizontal)
                            .padding(.top, 16)
                        NavigationLink(destination: LegalListView()) {
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
                        Divider().background(Color.gray.opacity(0.3))
                        // Account Section
                        Text("ACCOUNT")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundColor(.textBlack)
                            .padding(.horizontal)
                            .padding(.top, 16)
                        NavigationLink(destination: Text("Delete Account Screen")) {
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
                        Divider().background(Color.gray.opacity(0.3))
                        Spacer(minLength: 24)
                    }
                }
                WonderFooter()
            }
        }
        .navigationBarHidden(true)
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