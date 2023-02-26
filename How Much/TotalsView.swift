//
//  TotalsView.swift
//  How Much
//
//  Created by Marcin Jędrzejak on 25/02/2023.
//

import SwiftUI

struct TotalsView: View {
    let total: Double
    let tipPct: Int
    let numPeople: Int
    var tipAmount: Double {
        total * Double(tipPct)/100
    }
    var totalAmount: Double {
        total + tipAmount
    }
    var portion: Double {
        totalAmount / Double(numPeople)
    }
    
    let identifier = Locale.current.currency?.identifier ?? ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Grid(horizontalSpacing: 20) {
                    GridRow {
                        Text("Original Bill")
                            .gridColumnAlignment(.leading)
                        Text("\(total, format: .currency(code: identifier))")
                            .gridColumnAlignment(.trailing)
                    }
                    GridRow {
                        Text("Tip")
                        Text("\(tipAmount, format: .currency(code: identifier))")
                    }
                    GridRow {
                        Text("Total")
                        Text("\(totalAmount, format: .currency(code: identifier))")
                    }
                    GridRow {
                        Text("Portion")
                        Text("\(portion, format: .currency(code: identifier))")
                    }
                }
                .font(.title)
                Image("myportion")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                Spacer()
            }
            .navigationTitle("Amount Owing")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TotalsView_Previews: PreviewProvider {
    static var previews: some View {
        TotalsView(total: 135.20, tipPct: 18, numPeople: 3)
    }
}
