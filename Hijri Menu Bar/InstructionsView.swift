//
//  InstructionsView.swift
//  Hijri Menu Bar
//
//  Created by Enamul Ali on 02/04/2024.
//

import SwiftUI

struct InstructionsView: View {
    var dismiss: () -> Void

    var body: some View {
        VStack {
            HStack(){
                Text("Menu")
                    .font(.title)
                Spacer()
                Button("Close Menu") {
                    dismiss()
                }
            }

            Text("To automatically launch the app at login, please follow these steps:")
                .padding(.bottom, 10)
            Text("1. Open System Settings from the Apple menu.")
            Text("2. Navigate to General.")
            Text("3. Go to the Login Items tab.")
            Text("4. Click the '+' button and add your app from the Applications folder.")
            Text("5. The App should launch at login, even when quit.")
            Text("To terminate the app, removing it from the menu bar, please use Activity Monitor\nand search 'Hijri Menu Bar'. Double tap and press 'quit'.")
                .padding(.top, 10)
            HStack(){
                Button("Visit GitHub Repository") {
                    if let url = URL(string: "https://github.com/Enamulali/hijri-date") {
                        NSWorkspace.shared.open(url)
                    }
                }
                .padding(.top, 10)
            }

        }
        .padding()
    }
}
