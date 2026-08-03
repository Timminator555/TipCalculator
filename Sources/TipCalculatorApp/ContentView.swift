import SwiftUI

struct ContentView: View {
    // State variables automatically trigger UI updates when their values change
    @State private var billAmount: String = ""
    @State private var tipPercentage: Double = 15.0

    //Computed properties for calculations
    var bill: Double {
        Double(billAmount) ?? 0.0
    }

    var tipAmount: Double {
        bill * (tipPercentage / 100.0)
    }

    var totalAmount: Double {
        bill + tipAmount
    }

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Enter Bill Details")) {
                    TextField("Bill Amount", text: $billAmount)
                        .keyboardType(.decimalPad)

                    VStack(alignment: .leading) {
                        Text("Tip Percentage: \(Int(tipPercentage))%")
                        Slider(value: $tipPercentage, in: 0...30, step: 1)
                    }
                }

                Section(header: Text("Summary")) {
                    HStack {
                        Text("Tip Amount")
                        Spacer()
                        Text(tipAmount, format: .currency(code: "EUR"))
                    }
                    HStack {
                        Text("Total Due")
                        Spacer()
                        Text(totalAmount, format: .currency(code: "EUR"))
                            .bold()
                    }
                }
            }
            .navigationTitle("Tip Calculator")
        }
    }
}