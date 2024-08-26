//
//  MenuData.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-20.
//

import Foundation
import SwiftUI

import Foundation
import SwiftUI

extension Color {
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}

struct MenuData {
    let imageWidth = 90.0
    let imageHeight: Double
    let meatChoice = "Chicken OR Beef OR Pork OR Shrimp"
    
    let weekdayIndex: Int
    let dailySpecial: LunchSpecial
    
    let lunchSpecials: [LunchSpecial]
    let appetizers: [MenuItem]
    let appetizerImages: [String]
    let saladRolls: [MenuItem]
    let saladRollImages: [String]
    let soups: [Soup]
    let soupImages: [String]
    let vermicelli: [MenuItem]
    let vermicelliImages: [String]
    let vermicelliCombo: [MenuItem]
    let vermicelliComboImages: [String]
    let noodleSoups: [MenuItem]
    let noodleSoupImages: [String]
    let onRice: [MenuItem]
    let onRiceImages: [String]
    let friedRice: [MenuItem]
    let friedRiceImages: [String]
    let chowMein: [MenuItem]
    let chowMeinImages: [String]
    let chopSuey: [MenuItem]
    let chopSueyImages: [String]
    let chickenDishes: [MenuItem]
    let chickenDishesImages: [String]
    let beefDishes: [MenuItem]
    let beefDishesImages: [String]
    let porkDishes: [MenuItem]
    let porkDishesImages: [String]
    let shrimpDishes: [MenuItem]
    let shrimpDishesImages: [String]
    let birdNest: [MenuItem]
    let birdNestImages: [String]
    let hotPlate: [MenuItem]
    let hotPlateImages: [String]
    let sideOrder: [Soup]
    let sideOrderImages: [String]
    let sauce: [Soup]
    let drinks: [MenuItem]
    let dn1: [MenuItem]
    let dn1Images: [String]
    let dn2: [MenuItem]
    let dn3: [MenuItem]
    let dn4: [MenuItem]
    let dn5: [MenuItem]
    let dn6: [MenuItem]
    
    init() {
        self.imageHeight = imageWidth / 1.28
        self.weekdayIndex = Calendar.current.component(.weekday, from: Date())
        
        self.lunchSpecials = [
            LunchSpecial(day: "Monday", one: "#1: Stir Fry Chicken Vermicelli With One Spring Roll", two: "#2: Medium Deluxe Wonton Soup", choice3: "Ginger Chicken(Sauce on the side)"),
            LunchSpecial(day: "Tuesday", one: "#1: Sate Chicken Vermicelli With One Spring Roll", two: "#2: Medium Deluxe Wonton Soup", choice3: "Coconut Pork(Sauce on the side)"),
            LunchSpecial(day: "Wednesday", one: "#1: Stir Fry Chicken Vermicelli With One Spring Roll", two: "#2: Medium Deluxe Wonton Soup", choice3: "Ginger Pork(Sauce on the side)"),
            LunchSpecial(day: "Thursday", one: "#1: Sate Chicken Vermicelli With One Spring Roll", two: "#2: Medium Deluxe Wonton Soup", choice3: "Lemon Chicken(Sauce on the side)"),
            LunchSpecial(day: "Friday", one: "#1: Stir Fry Chicken Vermicelli With One Spring Roll", two: "#2: Medium Deluxe Wonton Soup", choice3: "Ginger Chicken(Sauce on the side)")
        ]
        
        if (weekdayIndex == 1){
            self.dailySpecial = LunchSpecial(day: "Sunday", one: "", two: "", choice3: "")
        } else if (weekdayIndex == 7) {
            self.dailySpecial = LunchSpecial(day: "Saturday", one: "", two: "", choice3: "")

        } else{
            self.dailySpecial = lunchSpecials[weekdayIndex - 2]
        }
        
        self.appetizers = [
            MenuItem(name: "Vietnamese Spring Rolls(4)", price: 9.00),
            MenuItem(name: "Chinese Egg Rolls(4)", price: 9.00),
            MenuItem(name: "Half Order(2)", price: 4.50),
            MenuItem(name: "Boneless Dry Ribs(25)", price: 11.95),
            MenuItem(name: "Deep Fried Shrimps(16)", price: 13.95),
            MenuItem(name: "Chicken Balls (16)", price: 13.95),
            MenuItem(name: "Half Order(8)", price: 7.95)
        ]
        self.appetizerImages = ["Springrolls", "Eggrolls", "Chicken Balls", "Shrimps", "Ribs"]
        
        self.saladRolls = [
            MenuItem(name: "Vegetarian Salad Rolls(4)", price: 8.50),
            MenuItem(name: "Full Order(4)", price: 9.00),
            MenuItem(name: "Half Order(2)", price: 5.95)
        ]
        self.saladRollImages = ["rolls"]
        
        self.soups = [
            Soup(name: "Wonton Soup", small: 5.95, medium: 8.95, large: 11.95),
            Soup(name: "Deluxe Wonton Soup", small: 6.95, medium: 9.95, large: 13.95),
            Soup(name: "Thai Tom Yum Chicken Soup", small: 0.00, medium: 10.95, large: 12.95),
            Soup(name: "Thai Tom Yum Shrimp Soup", small: 0.00, medium: 11.95, large: 13.95)
        ]
        self.soupImages = ["Deluxe Wonton Soup", "Thai Shrimp Soup"]
        
        self.vermicelli = [
            MenuItem(name: "Vegetarian Vermicelli", price: 10.00),
            MenuItem(name: "Spring Roll Vermicelli\n(With 2 Spring Rolls)", price: 10.00),
            MenuItem(name: "Sate Vermicelli & 1 Spring Roll", price: 12.95),
            MenuItem(name: "Stir Fry Vermicelli & 1 Spring Roll", price: 12.95),
            MenuItem(name: "Curried Vermicelli & 1 Spring Roll", price: 12.95)
        ]
        self.vermicelliImages = ["#1"]
        
        self.vermicelliCombo = [
            MenuItem(name: "Combo A: Sate", price: 13.95),
            MenuItem(name: "Combo B: Stir Fry", price: 13.95),
            MenuItem(name: "Combo C: Curry", price: 13.95)
        ]
        self.vermicelliComboImages = ["RNA"]
        
        self.noodleSoups = [
            MenuItem(name: "Wonton Noodle Soup", price: 11.95),
            MenuItem(name: "Regular Noodle Soup", price: 12.95),
            MenuItem(name: "Sate Noodle Soup", price: 13.95),
            MenuItem(name: "Thai Tom Yum Noodle Soup", price: 13.95),
            MenuItem(name: "Curry Noodle Soup", price: 13.95)
        ]
        self.noodleSoupImages = ["Chicken Noodle Soup", "Sate Shrimp Noodle Soup"]
        
        self.onRice = [
            MenuItem(name: "Sate on Rice/Noodles", price: 12.95),
            MenuItem(name: "Black Bean on Rice/Noodles", price: 12.95),
            MenuItem(name: "Sweet & Sour on Rice/Noodles", price: 12.95),
            MenuItem(name: "Coconut on Rice/Noodles", price: 12.95),
            MenuItem(name: "Ginger on Rice/Noodles", price: 12.95),
            MenuItem(name: "Szechuan on Rice/Noodles", price: 12.95),
            MenuItem(name: "Almond on Rice/Noodles", price: 12.95),
            MenuItem(name: "Lemon Chicken on Rice/Noodles", price: 12.95)
        ]
        self.onRiceImages = ["Ginger on rice", "Al Shr on rice"]
        
        self.friedRice = [
            MenuItem(name: "Mushroom Fried Rice", price: 12.95),
            MenuItem(name: "Chicken Fried Rice", price: 12.95),
            MenuItem(name: "Beef Fried Rice", price: 12.95),
            MenuItem(name: "Pork Fried Rice", price: 12.95),
            MenuItem(name: "Shrimp Fried Rice", price: 13.95),
            MenuItem(name: "Special Fried Rice(All Meats)", price: 13.95),
            MenuItem(name: "Thai Fried Rice(All Meats)", price: 14.95)
        ]
        self.friedRiceImages = ["Chicken Fried Rice"]
        
        self.chowMein = [
            MenuItem(name: "Mushroom Chow Mein", price: 12.95),
            MenuItem(name: "Chicken Chow Mein", price: 12.95),
            MenuItem(name: "Beef Chow Mein", price: 12.95),
            MenuItem(name: "Pork Chow Mein", price: 12.95),
            MenuItem(name: "Shrimp Chow Mein", price: 13.95),
            MenuItem(name: "Special Chow Mein(All Meats)", price: 13.95),
            MenuItem(name: "Thai Chow Mein(All Meats)", price: 14.95)
        ]
        self.chowMeinImages = ["Chicken Chow Mein"]
        
        self.chopSuey = [
            MenuItem(name: "Mushroom Chop Suey", price: 12.95),
            MenuItem(name: "Chicken Chop Suey", price: 12.95),
            MenuItem(name: "Beef Chop Suey", price: 12.95),
            MenuItem(name: "Pork Chop Suey", price: 12.95),
            MenuItem(name: "Shrimp Chop Suey", price: 13.95),
            MenuItem(name: "Special Chop Suey(All Meats)", price: 13.95),
            MenuItem(name: "Thai Chop Suey(All Meats)", price: 14.95)
        ]
        self.chopSueyImages = ["SP CS"]
        
        self.chickenDishes = [
            MenuItem(name: "Almond Chicken & Diced Vegetables", price: 13.95),
            MenuItem(name: "Sate Chicken & Vegetables", price: 13.95),
            MenuItem(name: "Chicken In Black Bean Sauce", price: 13.95),
            MenuItem(name: "Thai Chicken & Vegetables", price: 13.95),
            MenuItem(name: "Crispy Lemon Chicken", price: 13.95),
            MenuItem(name: "Crispy Coconut Chicken", price: 13.95),
            MenuItem(name: "Crispy Ginger Chicken", price: 13.95),
            MenuItem(name: "Sweet & Sour Chicken", price: 13.95),
            MenuItem(name: "Szechuan Crispy Chicken", price: 13.95),
            MenuItem(name: "Butter Garlic Chicken", price: 13.95)
        ]
        self.chickenDishesImages = ["LM CK"]
        
        self.beefDishes = [
            MenuItem(name: "Sate Beef & Vegetables", price: 13.95),
            MenuItem(name: "Beef in Black Bean Sauce", price: 13.95),
            MenuItem(name: "Beef and Broccoli", price: 13.95),
            MenuItem(name: "Thai Beef & Vegetables", price: 13.95),
            MenuItem(name: "Crispy Ginger Beef", price: 13.95),
            MenuItem(name: "Szechuan Crispy Beef", price: 13.95)
        ]
        self.beefDishesImages = ["Beef & Broc"]
        
        self.porkDishes = [
            MenuItem(name: "Sate Pork & Vegetables", price: 13.95),
            MenuItem(name: "Pork in Black Bean Sauce", price: 13.95),
            MenuItem(name: "Thai Pork & Vegetables", price: 13.95),
            MenuItem(name: "Honey Ribs", price: 13.95),
            MenuItem(name: "Crispy Coconut Pork", price: 13.95),
            MenuItem(name: "Crispy Ginger Pork", price: 13.95),
            MenuItem(name: "Sweet & Sour Lean Pork", price: 13.95),
            MenuItem(name: "Szechuan Crispy Pork", price: 13.95),
            MenuItem(name: "Butter Garlic Pork", price: 13.95)
        ]
        self.porkDishesImages = ["Coco Pork"]
        
        self.shrimpDishes = [
            MenuItem(name: "Sate Shrimp & Vegetables", price: 14.95),
            MenuItem(name: "Shrimp in Black Bean Sauce", price: 14.95),
            MenuItem(name: "Almond Shrimp & Diced vegetables", price: 14.95),
            MenuItem(name: "Thai Shrimp & Vegetables", price: 14.95),
            MenuItem(name: "Butter Garlic Fried Shrimp", price: 17.95)
        ]
        self.shrimpDishesImages = ["Butter Fried Shrimp"]
        
        self.birdNest = [
            MenuItem(name: "Singapore Noodles\n(With Peanut)", price: 16.95),
            MenuItem(name: "Vegetable Bird Nest", price: 16.95),
            MenuItem(name: "Almond Chicken &\nDiced Vegetables Bird Nest", price: 17.95),
            MenuItem(name: "Almond Shrimp &\nDiced Vegetables Bird Nest", price: 17.95),
            MenuItem(name: "Regular Bird Nest", price: 17.95),
            MenuItem(name: "Special Bird Nest(All Meats)", price: 18.95)
        ]
        self.birdNestImages = ["Sing ND", "SP Bnest"]
        
        self.hotPlate = [
            MenuItem(name: "Hot Plate 1: Sate Sauce", price: 17.95),
            MenuItem(name: "Hot Plate 2: Black Bean Sauce", price: 17.95),
            MenuItem(name: "Hot Plate 3: Ginger Sauce", price: 17.95),
            MenuItem(name: "Hot Plate 4: Coconut Sauce", price: 17.95),
            MenuItem(name: "Hot Plate 5: Szechuan Sauce", price: 17.95),
            MenuItem(name: "Hot Plate 6: Thai Tom Yum Sauce", price: 17.95)
        ]
        self.hotPlateImages = ["HP5"]
        
        self.sideOrder = [
            Soup(name: "Steamed Rice", small: 3.00, medium: 0.00, large: 5.00),
            Soup(name: "Steamed Noodles", small: 3.00, medium: 0.00, large: 5.00),
            Soup(name: "Fries", small: 4.00, medium: 0.00, large: 6.00),
            Soup(name: "Fries & Chicken", small: 0.00, medium: 0.00, large: 9.00),
            Soup(name: "Mixed Vegetables", small: 0.00, medium: 0.00, large: 6.00)
        ]
        self.sideOrderImages = ["FRIES & Chicken"]
        
        self.sauce = [
            Soup(name: "Fish Sauce", small: 0.50, medium: 0.00, large: 1.00),
            Soup(name: "Hoisin Sauce", small: 0.50, medium: 0.00, large: 1.00),
            Soup(name: "Sriracha Hot Sauce", small: 0.50, medium: 0.00, large: 1.00),
            Soup(name: "Sweet Chili Sauce", small: 0.50, medium: 0.00, large: 1.00),
            Soup(name: "Sweet & Sour Sauce", small: 0.50, medium: 0.00, large: 1.00),
            Soup(name: "Hot Chili Oil", small: 0.50, medium: 0.00, large: 1.00),
            Soup(name: "Peanut Sauce", small: 0.00, medium: 0.00, large: 1.50)
        ]
        
        self.drinks = [
            MenuItem(name: "Juice(In Can)", price: 2.50),
            MenuItem(name: "Soft Drink(In Can)", price: 2.50),
            MenuItem(name: "2 Litter", price: 4.00),
            MenuItem(name: "Vietnamese Iced Coffee\n(with condensed milk)", price: 4.00)
        ]
        
        self.dn1 = [
            MenuItem(name: "DN1A", price: 13.95),
            MenuItem(name: "DN1B", price: 13.95),
            MenuItem(name: "DN1C", price: 13.95)
        ]
        self.dn1Images = ["#3", "DN1B"]
        
        self.dn2 = [
            MenuItem(name: "DN2A", price: 29.95),
            MenuItem(name: "DN2B", price: 29.95)
        ]
        
        self.dn3 = [
            MenuItem(name: "DN3A", price: 43.95),
            MenuItem(name: "DN3B", price: 43.95)
        ]
        
        self.dn4 = [
            MenuItem(name: "DN4A", price: 53.95),
            MenuItem(name: "DN4B", price: 55.95)
        ]
        
        self.dn5 = [
            MenuItem(name: "DN5A", price: 71.95)
        ]
        
        self.dn6 = [
            MenuItem(name: "DN6A", price: 80.95)
        ]
    }
}

// Usage
let menuData = MenuData()

struct MenuItem {
    let name: String
    let price: Float
}

struct Soup {
    let name: String
    let small: Float
    let medium: Float
    let large: Float
}


struct LunchSpecial {
    var day: String
    var one: String
    var two: String
    var choice3: String
}


