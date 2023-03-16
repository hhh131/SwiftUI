
import SwiftUI

@main
struct EnvironmentObjTestApp: App {
    @StateObject var userProfile = UserProfileSetting()
    var body: some Scene {
        WindowGroup {
            FirstView().environmentObject(userProfile)
        }
    }
}
