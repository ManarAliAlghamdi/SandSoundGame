
import SwiftUI
struct GameOver: View {
    @EnvironmentObject var viewModel: GameViewModel
    var body: some View {
        ZStack {
            if viewModel.gameOver {
                VStack {
                    Spacer().frame(height: 30)
                    Text("اركض اسرع المرة الجايه ...")
                        .foregroundColor(.white)
                        .italic()
                    Spacer().frame(height: 30)
                    Button(action: {
                        viewModel.gameOver = false
                        viewModel.restartGame(backgroundSound: "full-background.mp3")
                    }) {
                        HStack {
                            Image(systemName: "arrow.clockwise")
                            Text("العب مرة ثانية")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.09))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .bottom
                    )
                }
                .padding(40)
                .frame(maxWidth: 400)
                .background(
                    Image("gameOver")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .stroke(myColors.darkNavy.opacity(0.8), lineWidth: 2)
                )
                .shadow(radius: 15)
                .scaleEffect(1.1)
                .transition(.opacity.combined(with: .scale))
                .animation(.spring())
            }else{
                Game()
                    .environmentObject(viewModel)
                    .onAppear {
                        // Switch your game mode, start the timer
                        viewModel.switchMode(
                            to: .game,
                            duration: 88,              // example: 60s game
                            backgroundSound: "full-background.mp3"
                        )
                    }
            }
        }
    }
}

#Preview {
    GameOver()
}
