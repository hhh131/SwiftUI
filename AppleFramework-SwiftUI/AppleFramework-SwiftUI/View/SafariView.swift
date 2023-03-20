//
//  SafariView.swift
//  AppleFramework-SwiftUI
//
//  Created by 신희권 on 2023/03/20.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
    SFSafariViewController{
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
        
        
    }
}
