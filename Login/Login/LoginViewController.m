//
//  LoginViewController.m
//  Login
//
//  Created by Ajay Thakur on 1/24/16.
//  Copyright © 2016 Ajay Thaur. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameEnteredUTF;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - call delegate methods to pass the data
- (IBAction)loginCancelHandler:(UIButton *)sender {
    // Go back protocol.
    if (self.delegate && [self.delegate respondsToSelector:@selector(loginDidCancel:)]) {
        [self.delegate loginDidCancel:self];
    }
}

- (IBAction)loginSaveHandler:(UIButton *)sender {
    if (self.passLoginDataToMainHandler) {
        self.passLoginDataToMainHandler(self.nameEnteredUTF.text);
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
