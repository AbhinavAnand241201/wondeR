import Foundation

struct LegalItem: Identifiable {
    let id = UUID()
    let title: String
    let destination: LegalDestination
}

enum LegalDestination {
    case termsOfService
    case privacyPolicy
    case thirdPartySoftware
} 