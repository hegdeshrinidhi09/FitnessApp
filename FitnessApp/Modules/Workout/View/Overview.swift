import SwiftUI

struct Overview: View {
    let weeklyStatus: [(day: String, status: String)] = [
        ("Sun", "Rest"),
        ("Mon", "Completed"),
        ("Tue", "Completed"),
        ("Wed", "Completed"),
        ("Thu", "Scheduled"),
        ("Fri", "Scheduled"),
        ("Sat", "Rest")
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Weekly Overview")
                .font(.title)
                .padding(.bottom)

            ForEach(weeklyStatus, id: \.day) { entry in
                HStack {
                    Text(entry.day)
                        .font(.title2)
                    Spacer()
                    Text(entry.status)
                        .font(.title2)
                }
            }
        }
        .padding()
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
