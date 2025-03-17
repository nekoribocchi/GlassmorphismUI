
import SwiftUI

@available(iOS 14.0, *)
public struct RoundedTopBar: View {
    var startColor : Color
    var endColor : Color
    var heightRatio: CGFloat
    var text: String?
    
    public init(startColor: Color = .g_Orange ,  endColor: Color = .g_Purple, heightRatio: CGFloat = 0.3, text: String? = nil) {
        self.startColor = startColor
        self.endColor = endColor
        self.heightRatio = heightRatio
        self.text = text
    }
    
    public var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack {
                    GradientBackground(
                        startColor: .g_Orange,
                        endColor: .g_Purple
                    )
                        .frame(height: geometry.size.height * heightRatio)
                        .clipShape(PartialRoundedRectangle(radius: 60, corners: [.bottomLeft, .bottomRight]))
                    
                    Text(text ?? "")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .shadow(radius: 5)
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}
@available(iOS 14.0, *)
struct PartialRoundedRectangle: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

@available(iOS 14.0, *)
struct RoundedTopBar_Previews: PreviewProvider {
    static var previews: some View {
   
        RoundedTopBar(
            heightRatio: 0.3,
            text: "第3問 / 10問"
        )
    }
}
