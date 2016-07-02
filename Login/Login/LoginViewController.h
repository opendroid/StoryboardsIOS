//
//  LoginViewController.h
//  Login
//
//  Created by Ajay Thakur on 1/24/16.
//  Copyright © 2016 Ajay Thaur. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol LoginViewControllerProtocol;
typedef void(^StartPassLoginNameDataHandler)(NSString *text);

@interface LoginViewController : UIViewController
@property (strong, nonatomic) id<LoginViewControllerProtocol> delegate;

// Pass data to caller VC using a block variable
@property (copy, nonatomic) StartPassLoginNameDataHandler passLoginDataToMainHandler;

@end

// pass data from child to parent VC using a protocol
@protocol LoginViewControllerProtocol <NSObject>
- (void) loginDidCancel: (LoginViewController *) loginVC ;

@end