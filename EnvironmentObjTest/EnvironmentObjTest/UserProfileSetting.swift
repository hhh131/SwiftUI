//
//  UserProfileSetting.swift
//  EnvironmentObjTest
//
//  Created by 신희권 on 2023/03/13.
//

import Foundation

final class UserProfileSetting: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
