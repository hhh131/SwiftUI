import SwiftUI

struct TestView: View {
    @State private var showModal = false
    
    var body: some View {
        VStack{
            Text("'나타나라'버튼 누르면 모달 출력!")
            Button(action: {
                self.showModal = true
            }){
                Text("나타나라").bold()
            }
            .frame(width: 80, height: 30, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.secondary))
            .font(.system(size: 16))
            .foregroundColor(Color.white)
            .sheet(isPresented: self.$showModal) {
                // TodoListAddDetail()
            } //Button 끝
        } //Vstack 끝
        
        
    }
}
