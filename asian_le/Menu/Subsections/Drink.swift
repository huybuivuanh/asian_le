//
//  Drink.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct DrinkSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // Drinks
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.drinks, id: \.name) { drink in
                if drink.name == "Juice(In Can)" {
                    VStack {
                        HStack {
                            Text(drink.name)
                            Spacer()
                            Text("$\(drink.price, specifier: "%0.2f")")
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Apple\tOrange")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else if drink.name == "Soft Drink(In Can)" {
                    VStack {
                        HStack {
                            Text(drink.name)
                            Spacer()
                            Text("$\(drink.price, specifier: "%0.2f")")
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        VStack {
                            HStack {
                                Text("Pepsi")
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                Spacer()
                                Text("Coke")
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                Spacer()
                                Text("Iced Tea")
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                Spacer()
                                Text("Ginger Ale")
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                Spacer()
                            }
                            HStack {
                                Text("Root Beer")
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                Spacer()
                                Text("Sprite")
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                Spacer()
                                Text("Orange Crush")
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                Spacer()
                                Text("7UP")
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                Spacer()
                            }
                        }
                    }
                } else if drink.name == "2 Litter" {
                    VStack {
                        HStack {
                            Text(drink.name)
                            Spacer()
                            Text("$\(drink.price, specifier: "%0.2f")")
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Pepsi\tCoke\tIced Tea\tGinger Ale")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else {
                    HStack {
                        Text(drink.name)
                        Spacer()
                        Text("$\(drink.price, specifier: "%0.2f")")
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                    }
                }
            }
        } label: {
            Text("Drinks & Beverages")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
