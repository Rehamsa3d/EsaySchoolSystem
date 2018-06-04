//
//  URLs.swift
//  aman-user-ios
//
//  Created by Mina Shehata Gad on 5/2/18.
//  Copyright © 2018 Mina Shehata Gad. All rights reserved.
//

import Foundation

struct URLs {
    
    static let baseUrl = "http://intcore.net/demos/aman/public/"
    static let apiUrl = baseUrl + "api/v1/"
    static let imageUrl = "http://intcore.net/demos/aman/public/"
    
    //Restiration Stuff .... for sign in, sign up , forgent, reset ......
    static let signin = apiUrl + "user/auth/signin"
    static let signup = apiUrl + "user/auth/signup"
    static let activate = apiUrl + "user/auth/active-account"
    static let requestResetPassword = apiUrl + "user/auth/password/email"
    static let resetPassword = apiUrl + "user/auth/password/reset"
    static let resendCode = apiUrl + "user/auth/resend-activation-code"
    
    

}
