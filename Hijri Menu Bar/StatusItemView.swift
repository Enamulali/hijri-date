import SwiftUI

extension Notification.Name {
    static let fetchHijriDates = Notification.Name("fetchHijriDates")
}

struct StatusItemView: View {
    @State private var hijriDateArabic: String = ""
    @State private var hijriDateEnglish: String = ""

    var body: some View {
      VStack {
        // Display the Hijri date with appropriate formatting
        Text("Hijri Date: \(hijriDateArabic)")
          .padding()
        Text("\(hijriDateEnglish)")
          .padding(.bottom, 10)
        Text("Copyright © 2024 Enamul Ali")
          .font(.system(size: 10))
          .foregroundColor(Color.gray)
          .padding(.bottom, 10)
      }
      // Call fetchHijriDates when the popover appears
      .onAppear(perform: fetchHijriDates)
      .onReceive(NotificationCenter.default.publisher(for: .fetchHijriDates)) { _ in
          fetchHijriDates()
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
