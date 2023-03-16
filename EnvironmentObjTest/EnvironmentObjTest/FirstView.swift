

import SwiftUI

struct FirstView: View {
    
    @EnvironmentObject var userProfile: UserProfileSetting
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Text("Current Age : \(userProfile.age)")
                
                NavigationLink{
                    SecondView()
                } label: {
                    Text("SecondView")
                }
                
                Button {
                    userProfile.haveBirthDayParty()
                } label: {
                    Text("Having Birthday Party")
                }
                
            }
            .navigationTitle("First View")
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView().environmentObject(UserProfileSetting())
    }
}
