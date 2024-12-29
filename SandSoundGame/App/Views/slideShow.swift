



import SwiftUI

struct SlidingPagesView: View {
    var body: some View {
        TabView {
            // First Sliding Page
            PageView(content: "ثبت الهاتف عموديًا!")
                .background(Color.black)
                .tag(0) // Optional tag for identification\
            
            // Second Sliding Page
            PageView(content: "دع انتباهك علي تفاصيل الاصوات!")
                .background(Color.black)
                .tag(1)
        }
        .tabViewStyle(PageTabViewStyle()) // Enable sliding effect
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)) // Optional dots indicator
        .ignoresSafeArea()
    }
    
}

struct PageView: View {
    var content: String
    
    var body: some View {
        VStack {
            Text(content)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct SlidingPagesView_Previews: PreviewProvider {
    static var previews: some View {
        SlidingPagesView()
    }
}
