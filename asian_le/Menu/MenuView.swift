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
                    LunchSpecialSection(isExpanded: $specialExpanded)
                    
                    // Appetizer list
                    AppetizerSection(isExpanded: $appetizersExpanded)
                    
                    // Salad rolls list
                    SaladRollSection(isExpanded: $saladRollsExpanded)
                    
                    // Soup list
                    SoupSection(isExpanded: $soupsExpanded)
                    
                    // Vermicelli list
                    VermicelliSection(isExpanded: $vermicelliExpanded)
                    
                    // Vermicelli Combo list
                    VermicelliComboSection(isExpanded: $vermicelliComboExpanded)
                    
                    // Noodle Soup
                    NoodleSoupSection(isExpanded: $noodleSoupExpanded)
                    
                    // On Rice
                    OnRiceSection(isExpanded: $onRiceExpanded)
                    
                    // Fried Rice
                    FriedRiceSection(isExpanded: $friedRiceExpanded)
                    
                    // Chow Mein
                    ChowMeinSection(isExpanded: $chowMeinExpanded)
                    
                    // Chop Suey
                    ChopSueySection(isExpanded: $chopSueyExpanded)
                    
                    // Chicken Dishes
                    ChickenSection(isExpanded: $chickenDishesExpanded)
                    
                    // Beef Dishes
                    BeefSection(isExpanded: $beefDishesExpanded)
                    
                    // Pork Dishes
                    PorkSection(isExpanded: $porkDishesExpanded)
                    
                    // Shrimp Dishes
                    ShrimpSection(isExpanded: $shrimpDishesExpanded)
                    
                    // Bird Nest
                    BirdNestSection(isExpanded: $birdNestExpanded)
                    
                    // Hot Plate
                    HotPlateSection(isExpanded: $hotPlateExpanded)
                    
                    // Side Order
                    SideOrderSection(isExpanded: $sideOrderExpanded)
                    
                    // Sauce
                    SauceSection(isExpanded: $sauceExpanded)
                    
                    // Drinks
                    DrinkSection(isExpanded: $drinksExpanded)
                    
                    // DN1
                    DN1Section(isExpanded: $dn1Expanded)
                    
                    // DN2
                    DN2Section(isExpanded: $dn2Expanded)
                    
                    // DN3
                    DN3Section(isExpanded: $dn3Expanded)
                    
                    // DN4
                    DN4Section(isExpanded: $dn4Expanded)
                    
                    // DN5
                    DN5Section(isExpanded: $dn5Expanded)
                    
                    // DN6
                    DN6Section(isExpanded: $dn6Expanded)
                    
                    
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

#Preview {
    ContentView()
}

