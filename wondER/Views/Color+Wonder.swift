import SwiftUI

extension Color {
    static let beigeBackground = Color(hex: "#F5F5F0")
    static let wonderGreen = Color(hex: "#2E7D32")
    static let textGray = Color(red: 0.5, green: 0.5, blue: 0.5)
    static let textBlack = Color.black
    static let textRed = Color.red
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: "#", with: "")
        var rgb: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&rgb)
        self.init(
            red: Double((rgb >> 16) & 0xFF) / 255.0,
            green: Double((rgb >> 8) & 0xFF) / 255.0,
            blue: Double(rgb & 0xFF) / 255.0
        )
    }
} 