import SwiftUI

struct SettingsView: View {
    @State private var pushNotificationsOn = true
    @State private var textMessageOn = false
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
                Text("SETTINGS")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
                Color.clear.frame(width: 44)
            }
            .background(Color(.systemGroupedBackground))

            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
                    // Delivery Info
                    Text("Delivery updates are core to the Wonder experience and can't be turned off. If you select Text Message, message and data rates may apply.")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                        .padding(.top)

                    // Marketing Section
                    VStack(alignment: .leading, spacing: 16) {
                        Text("MARKETING")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        HStack {
                            Text("Push Notifications")
                            Spacer()
                            Toggle("", isOn: $pushNotificationsOn)
                                .labelsHidden()
                                .toggleStyle(SwitchToggleStyle(tint: .green))
                        }
                        HStack {
                            Text("Text Message")
                            Spacer()
                            Toggle("", isOn: $textMessageOn)
                                .labelsHidden()
                                .toggleStyle(SwitchToggleStyle(tint: .green))
                        }
                        if textMessageOn {
                            Text("By turning on this option, you agree to receive reoccurring and automated marketing messages from Wonder. Message & data rates may apply. View Terms & Conditions and our Privacy Policy.")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.horizontal)

                    // Legal Section
                    VStack(alignment: .leading, spacing: 8) {
                        NavigationLink(destination: LegalListView()) {
                            HStack {
                                Text("Legal")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.green)
                            }
                        }
                    }
                    .padding(.horizontal)

                    // Account Section
                    VStack(alignment: .leading, spacing: 8) {
                        Text("ACCOUNT")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        NavigationLink(destination: Text("Delete Account Screen")) {
                            HStack {
                                Text("Delete account")
                                    .foregroundColor(.pink)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.green)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
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
        .navigationBarHidden(true)
    }
} 