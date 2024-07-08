

import SwiftUI

struct CookieExample: View {
    var body: some View {
            List {
                CookieRow(imageName: "chocolate_hearts", name: "Chocolate hearts", price: "$2,64", calories: "250 cal")
                CookieRow(imageName: "mm_cookies", name: "M&M cookies", price: "$4,35", calories: "400 cal")
                CookieRow(imageName: "valentines_cookies", name: "Valentines cookies", price: "$6,54", calories: "190 cal")
                CookieRow(imageName: "christmas_cookies", name: "Christmas cookies", price: "$1,85", calories: "300 cal")
                CookieRow(imageName: "jelly_cookies", name: "Jelly cookies", price: "$3,05", calories: "240 cal")
            }
    }
}

struct CookieRow: View {
    var imageName: String
    var name: String
    var price: String
    var calories: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 3)
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                Text("\(price) | \(calories)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("Show details")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
        }
        .padding(.vertical, 5)
    }
}


#Preview {
    CookieExample()
}
