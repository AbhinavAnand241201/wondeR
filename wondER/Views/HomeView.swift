import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.beigeBackground.ignoresSafeArea()
            VStack(spacing: 0) {
                // Header
                HStack {
                    ZStack {
                        Circle()
                            .fill(Color.wonderGreen)
                            .frame(width: 40, height: 40)
                        Text("w")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Text("HI, SAM")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(Color.textBlack)
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.wonderGreen)
                    }
                }
                .padding(10)
                // Tabs
                HStack(spacing: 15) {
                    HomeTabButton(icon: "truck", label: "Delivery")
                    HomeTabButton(icon: "bag", label: "Pickup")
                    HomeTabButton(icon: "leaf", label: "Blue Apron")
                }
                .padding(.top, 20)
                // Popular Restaurants
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 5) {
                        Text("Popular Restaurants")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color.textBlack)
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.wonderGreen)
                        Spacer()
                    }
                    .padding(.leading, 15)
                    .padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            RestaurantCardView(
                                banner: "Royal Greens",
                                image: nil,
                                subtext: "Salads & Bowls • $ • 19-34 min",
                                rating: "9.7",
                                badge: nil
                            )
                            RestaurantCardView(
                                banner: "Limesalt",
                                image: nil,
                                subtext: "Mexican • $ • 18-33",
                                rating: nil,
                                badge: "VEG"
                            )
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    }
                }
                // Explore Collections
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 5) {
                        Text("EXPLORE COLLECTIONS")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color.textBlack)
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.wonderGreen)
                        Spacer()
                    }
                    .padding(.leading, 15)
                    .padding(.top, 20)
                    VStack(alignment: .leading, spacing: 2) {
                        Text("The Best of Wonder")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(Color.textBlack)
                        Text("Must-try bites for newcomers and regulars alike.")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color.textBlack)
                    }
                    .padding(.leading, 15)
                    .padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            CollectionCardView(badge: "Barrio Cafe")
                            CollectionCardView(badge: "Barrio Cafe")
                            CollectionCardView(badge: "Chios Taverna")
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    }
                }
                Spacer(minLength: 0)
            }
            // Custom Tab Bar
            HomeTabBar()
        }
    }
}

struct HomeTabButton: View {
    let icon: String
    let label: String
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: icon)
                .resizable()
                .frame(width: 28, height: 28)
                .foregroundColor(Color.wonderGreen)
            Text(label)
                .font(.system(size: 14))
                .foregroundColor(Color.textBlack)
        }
        .frame(width: 100, height: 60)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.04), radius: 2, x: 0, y: 1)
    }
}

struct RestaurantCardView: View {
    let banner: String
    let image: Image? // Placeholder for now
    let subtext: String
    let rating: String?
    let badge: String?
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Rectangle()
                    .fill(Color.wonderGreen)
                    .frame(height: 30)
                Text(banner)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
            }
            .frame(width: 180, height: 30)
            ZStack(alignment: .topTrailing) {
                Color.gray
                    .frame(width: 180, height: 150)
                    .cornerRadius(8)
                if let badge = badge {
                    Circle()
                        .fill(Color.wonderGreen)
                        .frame(width: 30, height: 30)
                        .overlay(
                            Text(badge)
                                .font(.system(size: 12))
                                .foregroundColor(.white)
                        )
                        .padding(8)
                }
            }
            Text(subtext)
                .font(.system(size: 14))
                .foregroundColor(Color.textBlack)
            if let rating = rating {
                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .foregroundColor(Color.wonderGreen)
                    Text(rating)
                        .font(.system(size: 14))
                        .foregroundColor(Color.textBlack)
                }
            }
        }
        .frame(width: 180, height: 250)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 2, x: 0, y: 1)
    }
}

struct CollectionCardView: View {
    let badge: String
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Color.gray
                .frame(width: 120, height: 150)
                .cornerRadius(8)
            Circle()
                .fill(Color.wonderGreen)
                .frame(width: 30, height: 30)
                .overlay(
                    Text(badge)
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .padding(2)
                )
                .offset(x: -8, y: -8)
        }
        .frame(width: 120, height: 180)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 2, x: 0, y: 1)
    }
}

struct HomeTabBar: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                VStack {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.wonderGreen)
                    Text("Home")
                        .font(.system(size: 12))
                        .foregroundColor(Color.textBlack)
                }
                Spacer()
                VStack {
                    Image(systemName: "fork.knife")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                    Text("Restaurants")
                        .font(.system(size: 12))
                        .foregroundColor(Color.textBlack)
                }
                Spacer()
                VStack {
                    Image(systemName: "leaf")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                    Text("Blue Apron")
                        .font(.system(size: 12))
                        .foregroundColor(Color.textBlack)
                }
                Spacer()
                VStack {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                    Text("Account")
                        .font(.system(size: 12))
                        .foregroundColor(Color.textBlack)
                }
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 5)
            .frame(height: 60)
            .background(Color(hex: "#424242"))
            HStack {
                Text("Wonder")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(Color.textBlack)
                Spacer()
                Text("curated by Mobbin")
                    .font(.system(size: 12))
                    .foregroundColor(Color.textBlack)
                Image(systemName: "star")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(Color.textBlack)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 10)
            .background(Color.beigeBackground)
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    HomeView()
} 