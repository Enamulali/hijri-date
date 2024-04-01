import SwiftUI

struct StatusItemView: View {
    @State private var hijriDateArabic: String = ""
    @State private var hijriDateEnglish: String = ""

    var body: some View {
        VStack {
            Text("Hijri Date: \(hijriDateArabic)")
                .padding()
            Text("\(hijriDateEnglish)")
                .padding(.bottom, 10)
                .onAppear {
                    fetchHijriDates()
                }
            Text("Copyright © 2024 Enamul Ali")
                .font(.system(size: 10))
                .foregroundColor(Color.gray)
                .padding(.bottom, 10)
        }
    }

    private func fetchHijriDates() {
        let calendar = Calendar(identifier: .islamicUmmAlQura)
        let dateFormatterArabic = DateFormatter()
        dateFormatterArabic.calendar = calendar
        dateFormatterArabic.dateStyle = .full
        dateFormatterArabic.locale = Locale(identifier: "ar")

        let dateFormatterEnglish = DateFormatter()
        dateFormatterEnglish.calendar = calendar
        dateFormatterEnglish.dateStyle = .full
        dateFormatterEnglish.locale = Locale(identifier: "en")

        let currentDate = Date()

        let hijriDateArabic = dateFormatterArabic.string(from: currentDate)
        let hijriDateEnglish = dateFormatterEnglish.string(from: currentDate)

        self.hijriDateArabic = hijriDateArabic
        self.hijriDateEnglish = hijriDateEnglish
    }
}
