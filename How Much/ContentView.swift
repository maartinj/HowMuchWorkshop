//
//  ContentView.swift
//  How Much
//
//  Created by Marcin Jędrzejak on 22/02/2023.
//

import SwiftUI

// Film Part 2 2:10: https://www.youtube.com/watch?v=vuTnHh6sjkw&ab_channel=StewartLynch

struct ContentView: View {
    @State private var tipPct = 0
    @State private var numPeople = 1
    @State private var total = "0"
    var body: some View {
        NavigationStack {
            VStack {
                Text(total)
                    .font(.system(size: 70))
                    .frame(width: 260, alignment: .trailing)
                    .padding(.vertical, 1)
                HStack {
                    ForEach(1...3, id: \.self) { number in
                        numberButton(number: "\(number)")
                    }
                }
                HStack {
                    ForEach(4...6, id: \.self) { number in
                        numberButton(number: "\(number)")
                    }
                }
                HStack {
                    ForEach(7...9, id: \.self) { number in
                        numberButton(number: "\(number)")
                    }
                }
                HStack {
                    numberButton(number: "0")
                    numberButton(number: ".")
                    Button {
                        
                    } label: {
                        Image(systemName: "delete.backward.fill")
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                }
                HStack {
                    Text("Tip")
                    Picker(selection: $tipPct, label: Text("Tip")) {
                        ForEach(0...100, id: \.self) { tip in
                            Text("\(tip)%")
                        }
                    }
                    .buttonStyle(.bordered)
                }
                HStack {
                    Text("Number of People")
                    Picker(selection: $numPeople, label: Text("Number of People")) {
                        ForEach(1...20, id: \.self) { numPeople in
                            Text("\(numPeople)")
                        }
                    }
                    .buttonStyle(.bordered)
                }
                HStack {
                    Button("Calculate") {
                        
                    }
                    Button("Clear") {
                        
                    }
                }
                .buttonStyle(.borderedProminent)
                Spacer()
            }
            .navigationTitle("Portion Calculator")
        }
    }
    func numberButton(number: String) -> some View {
        Button {
            
        } label: {
            Text(number)
                .font(.largeTitle)
                .bold()
                .frame(width: 80, height: 80)
                .background(.purple)
                .foregroundColor(.white)
                .clipShape(Circle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .tint(.purple)
    }
}
