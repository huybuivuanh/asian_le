//
//  MenuView.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-15.
//


import Foundation
import SwiftUI


struct MenuView: View {
//    @State private var specialExpanded = true
//    @State private var appetizersExpanded = true
//    @State private var saladRollsExpanded = true
//    @State private var soupsExpanded = true
//    @State private var vermicelliExpanded = true
//    @State private var vermicelliComboExpanded = true
//    @State private var noodleSoupExpanded = true
//    @State private var onRiceExpanded = true
//    @State private var friedRiceExpanded = true
//    @State private var chowMeinExpanded = true
//    @State private var chopSueyExpanded = true
//    @State private var chickenDishesExpanded = true
//    @State private var beefDishesExpanded = true
//    @State private var porkDishesExpanded = true
//    @State private var shrimpDishesExpanded = true
//    @State private var birdNestExpanded = true
//    @State private var hotPlateExpanded = true
//    @State private var sideOrderExpanded = true
//    @State private var sauceExpanded = true
//    @State private var drinksExpanded = true
//    @State private var dn1Expanded = true
//    @State private var dn2Expanded = true
//    @State private var dn3Expanded = true
//    @State private var dn4Expanded = true
//    @State private var dn5Expanded = true
//    @State private var dn6Expanded = true

    @State private var specialExpanded = true
    @State private var appetizersExpanded = true
    @State private var saladRollsExpanded = true
    @State private var soupsExpanded = false
    @State private var vermicelliExpanded = false
    @State private var vermicelliComboExpanded = true
    @State private var noodleSoupExpanded = false
    @State private var onRiceExpanded = false
    @State private var friedRiceExpanded = true
    @State private var chowMeinExpanded = false
    @State private var chopSueyExpanded = false
    @State private var chickenDishesExpanded = false
    @State private var beefDishesExpanded = false
    @State private var porkDishesExpanded = false
    @State private var shrimpDishesExpanded = true
    @State private var birdNestExpanded = true
    @State private var hotPlateExpanded = false
    @State private var sideOrderExpanded = false
    @State private var sauceExpanded = false
    @State private var drinksExpanded = false
    @State private var dn1Expanded = true
    @State private var dn2Expanded = false
    @State private var dn3Expanded = false
    @State private var dn4Expanded = false
    @State private var dn5Expanded = false
    @State private var dn6Expanded = false
    

    var menuData = MenuData()
    
    var body: some View {
        ZStack {
            Color(hex: "F9DBBA")
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                Text("Our Menu")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .padding(.top)
                
                Text("")
                
                List {
                    
                    // Lunch Special
                    LunchSpecialSection(isExpanded: $specialExpanded, data: menuData)
                    
                    // Appetizer list
                    AppetizerSection(isExpanded: $appetizersExpanded, data: menuData)
                    
                    // Salad rolls list
                    SaladRollSection(isExpanded: $saladRollsExpanded, data: menuData)
                    
                    // Soup list
                    SoupSection(isExpanded: $soupsExpanded, data: menuData)
                    
                    // Vermicelli list
                    VermicelliSection(isExpanded: $vermicelliExpanded, data: menuData)
                    
                    // Vermicelli Combo list
                    VermicelliComboSection(isExpanded: $vermicelliComboExpanded, data: menuData)
                    
                    // Noodle Soup
                    NoodleSoupSection(isExpanded: $noodleSoupExpanded, data: menuData)
                    
                    // On Rice
                    OnRiceSection(isExpanded: $onRiceExpanded, data: menuData)
                    
                    // Fried Rice
                    FriedRiceSection(isExpanded: $friedRiceExpanded, data: menuData)
                    
                    // Chow Mein
                    ChowMeinSection(isExpanded: $chowMeinExpanded, data: menuData)
                    
                    // Chop Suey
                    ChopSueySection(isExpanded: $chopSueyExpanded, data: menuData)
                    
                    // Chicken Dishes
                    ChickenSection(isExpanded: $chickenDishesExpanded, data: menuData)
                    
                    // Beef Dishes
                    BeefSection(isExpanded: $beefDishesExpanded, data: menuData)
                    
                    // Pork Dishes
                    PorkSection(isExpanded: $porkDishesExpanded, data: menuData)
                    
                    // Shrimp Dishes
                    ShrimpSection(isExpanded: $shrimpDishesExpanded, data: menuData)
                    
                    // Bird Nest
                    BirdNestSection(isExpanded: $birdNestExpanded, data: menuData)
                    
                    // Hot Plate
                    HotPlateSection(isExpanded: $hotPlateExpanded, data: menuData)
                    
                    // Side Order
                    SideOrderSection(isExpanded: $sideOrderExpanded, data: menuData)
                    
                    // Sauce
                    SauceSection(isExpanded: $sauceExpanded, data: menuData)
                    
                    // Drinks
                    DrinkSection(isExpanded: $drinksExpanded, data: menuData)
                    
                    // DN1
                    DN1Section(isExpanded: $dn1Expanded, data: menuData)
                    
                    // DN2
                    DN2Section(isExpanded: $dn2Expanded, data: menuData)
                    
                    // DN3
                    DN3Section(isExpanded: $dn3Expanded, data: menuData)
                    
                    // DN4
                    DN4Section(isExpanded: $dn4Expanded, data: menuData)
                    
                    // DN5
                    DN5Section(isExpanded: $dn5Expanded, data: menuData)
                    
                    // DN6
                    DN6Section(isExpanded: $dn6Expanded, data: menuData)
                    
                    
                }
                .listStyle(InsetGroupedListStyle())
                .background(Color.clear)
                .scrollContentBackground(.hidden)
                .padding(.top, -30)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}
