//
//  UserProfile.swift
//  GithubUserSearch
//
//  Created by 신희권 on 2023/03/20.
//

import Foundation


struct UserProfile: Hashable, Identifiable, Decodable{
    
    var id: Int64
    var login: String
    var name: String
    var avatarUrl: URL
    var htmlUrl: String
    var followers: Int
    var following: Int
    
    enum CodingKeys: String, CodingKey{
        case id
        case login
        case name
        case avatarUrl = "avatar_url"
        case htmlUrl = "html_url"
        case followers
        case following
    }
}
extension UserProfile{
    static let mock = UserProfile(
        id: 5119292,
        login: "hhh131",
        name: "Heekwon",
        avatarUrl: URL(string: "https://avatars.githubuserconten.com/u/5119286?v=4")!,
        htmlUrl: "https:/github.com/hhh131",
        followers: 100,
        following: 50
        )
        
}
