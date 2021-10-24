//
//  EmailLoginComponentData.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import Foundation

class EmailLoginViewData {
    
    private(set) var email: TextFieldViewData
    private(set) var password: TextFieldViewData
    
    internal init(email: TextFieldViewData,
                  password: TextFieldViewData) {
        self.email = email
        self.password = password
    }
    
    
}
