import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Image(systemName: "car.side.front.open")
                    .font(.system(size: 64))
                    .foregroundStyle(.blue)

                Text("RoadMirror")
                    .font(.largeTitle.bold())

                Text("Зеркалирование экрана iPhone")
                    .font(.headline)
                    .multilineTextAlignment(.center)

                VStack(alignment: .leading, spacing: 12) {
                    Label(
                        "Проект создан",
                        systemImage: "checkmark.circle"
                    )

                    Label(
                        "Поддержка CarPlay: проверяется",
                        systemImage: "car.side"
                    )

                    Label(
                        "Передача изображения: не реализована",
                        systemImage: "video.slash"
                    )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(
                    Color.gray.opacity(0.1),
                    in: RoundedRectangle(cornerRadius: 16)
                )

                Text(
                    "Приложение пока является прототипом. " +
                    "Для зеркалирования нужны технически " +
                    "совместимый способ вывода и разрешения Apple."
                )
                .font(.footnote)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)

                Spacer()
            }
            .padding()
            .navigationTitle("Главная")
        }
    }
}

#Preview {
    ContentView()
}
