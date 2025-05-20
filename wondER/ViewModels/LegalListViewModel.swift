import Foundation

class LegalListViewModel: ObservableObject {
    @Published var items: [LegalItem] = [
        LegalItem(title: "Terms of Service", destination: .termsOfService),
        LegalItem(title: "Privacy Policy", destination: .privacyPolicy),
        LegalItem(title: "Third Party Software", destination: .thirdPartySoftware)
    ]
} 