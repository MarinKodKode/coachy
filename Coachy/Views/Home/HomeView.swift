import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        VStack {
            // Top Bar with Profile
            HStack {
                VStack(alignment: .leading) {
                    
                    Text("Hola Manuel!") // Replace with actual user name if available
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                Spacer()
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
            }
            .padding()
            .background(Color("darkModeColor"))
            .shadow(radius: 2)
            
            ScrollView {
                VStack {
                    Button(action: {}, label: {
                        Text("Iniciar")
                            .font(.system(size: 24))
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .padding()
                            .background(
                                Circle()
                                    .strokeBorder(Color.white)
                                    .aspectRatio(0.1, contentMode: .fill)
                            )
                    })
                    
                    Text("Workout of the day")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .padding(.top, 20)
                        .foregroundStyle(Color.white)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(sampleMetrics, id : \.metric) { metric in
                                WorkoutMetric(
                                    icon: Image(systemName: metric.icon),
                                    text: metric.metric,
                                    description: metric.description
                                )
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                }
                .frame(maxWidth: .infinity, minHeight: UIScreen.main.bounds.height * 0.20)
                .padding(.top, 30)
                
                VStack(spacing: 16) {
                    Text("Rutina del día")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
//                        .padding(.top, 20)	
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
            
            Spacer()
            
            // Bottom Navigation Bar
            HStack {
                Spacer()
                BottomNavItem(icon: "house.fill", title: "Inicio", isSelected: selectedTab == 0) {
                    selectedTab = 0
                }
                Spacer()
                
                BottomNavItem(icon: "clipboard", title: "Planes", isSelected: selectedTab == 1) {
                    selectedTab = 1
                }
                Spacer()
                BottomNavItem(icon: "dumbbell", title: "Workout", isSelected: selectedTab == 2) {
                    selectedTab = 2
                }
                Spacer()
                BottomNavItem(icon: "person.2", title: "Club", isSelected: selectedTab == 3) {
                    selectedTab = 3
                }
                Spacer()
                BottomNavItem(icon: "chart.bar", title: "Actividad", isSelected: selectedTab == 4) {
                    selectedTab = 4
                }
                Spacer()
            }
            .padding()
            .background(Color("darkModeColor"))
            .cornerRadius(20)
            .shadow(radius: 5)
        }
        .background(Color("darkModeColor"))
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(true)
    }
}

// Bottom Navigation Bar Component
struct BottomNavItem: View {
    let icon: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
                .foregroundColor(isSelected ? .blue : .gray)
            Text(title)
                .font(.caption)
                .foregroundColor(isSelected ? .blue : .gray)
        }
        .padding(.bottom, 12)
        .padding(.top, 1)
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    HomeView()
}
