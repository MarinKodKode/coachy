import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    Spacer()
                    Button(action: {}, label: {
                        Text("Start")
                            .font(.system(size: 24))
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .padding()
                            .background(
                                Circle()
                                    .strokeBorder()
                                    .aspectRatio(1, contentMode: .fill)
                                    .foregroundStyle(.white)
                            )
                    })
                    
                    Text("Workout of the day")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .padding(.top, 20)
                        .foregroundStyle(Color.white)
                    ScrollView(.horizontal, showsIndicators: false) { // Horizontal scrolling for metrics
                        HStack {
                            WorkoutMetric()
                            WorkoutMetric()
                            WorkoutMetric()
                            WorkoutMetric()
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
                        .foregroundStyle(Color.white)
                        .padding()
                    ExcerciseElement()
                    ExcerciseElement()
                    ExcerciseElement()
                    ExcerciseElement()
                }
                .frame(maxWidth: .infinity)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeView()
}

