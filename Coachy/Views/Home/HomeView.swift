import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
                Button(action: {}, label: {
                    Text("Iniciar")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .padding()
                        .background(
                            Circle()
                                .strokeBorder()
                                .aspectRatio(1, contentMode: .fill)
                        )
                })
                
                Text("Workout of the day")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                    .foregroundStyle(Color.white)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(sampleMetrics, id : \.metric){metric in
                            WorkoutMetric(
                                icon: Image(systemName: metric.icon), text: metric.metric, description: metric.description
                            )
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                }
            }
            .frame(maxWidth: .infinity, minHeight: UIScreen.main.bounds.height * 0.5)
            .padding(.bottom, 30)
            VStack(spacing: 16) {
                Text("Rutina del día")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .foregroundColor(Color.white)
                ExcerciseElement()
                ExcerciseElement()
                ExcerciseElement()
                ExcerciseElement()
            }
            .frame(maxWidth: .infinity)
        }
        .background(Color("darkModeColor"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeView()
}
