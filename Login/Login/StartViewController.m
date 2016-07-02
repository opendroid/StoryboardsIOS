//
//  ViewController.m
//  Login
//
//  Created by Ajay Thakur on 1/24/16.
//  Copyright © 2016 Ajay Thaur. All rights reserved.
//

#import "StartViewController.h"

@interface StartViewController ()
@property (weak, nonatomic) IBOutlet UILabel *loginNameUIL;

// Data passed from LoginVC
@property (strong, nonatomic) NSString *loginName;

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.loginName=@"Hello Firstname Lastname";
    self.loginNameUIL.text = self.loginName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    self.loginNameUIL.text = self.loginName;
    NSLog(@"StartViewController:viewWillAppear:%@ %@", self.loginName, self.loginNameUIL.text);
}

#pragma mark - prepare for segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    LoginViewController *loginVC = segue.destinationViewController;
    
    // Cancel action is passed back using a protocol.
    loginVC.delegate = self;
    
    // Login data is passed back using a callback handler.
    loginVC.passLoginDataToMainHandler = ^ (NSString *name) {
        self.loginName = name;
        NSLog(@"StartViewController:loginDidSave:%@, %@", name, self.loginName);
        [self dismissViewControllerAnimated:YES completion:nil];
    };
}


#pragma mark - Protocol methods to pass data from login to main scene
- (void) loginDidCancel: (LoginViewController *) loginVC {
    NSLog(@"StartViewController:loginDidCancel");
    self.loginName = @"User cancelled";
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
