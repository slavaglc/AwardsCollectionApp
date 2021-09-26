
import SwiftUI

struct MyLogo: View {
    let width: CGFloat
    let height: CGFloat
    
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(0..<21){
                    iteration in
                    Ellipse()
                        .fill(LinearGradient(colors: [.blue, .green], startPoint: UnitPoint(x: 0, y: 1), endPoint: UnitPoint(x: 1, y: 0)))
                        .frame(width: width * 0.1, height: height * 0.7, alignment: .center)
                        .rotationEffect(.degrees(Double(iteration * 10)))
                }
            }
            Text("New Order")
                .bold()
                .italic()
                .font(.custom("Avenir", size: width * 0.2))
        }
    }
}

struct FirstLogo_Previews: PreviewProvider {
    static var previews: some View {
        MyLogo(width: 100, height: 100)
    }
}
