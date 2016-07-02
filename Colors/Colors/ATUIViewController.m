//
//  ATUIViewController.m
//  Colors
//
//  Created by Ajay Thakur on 1/23/16.
//  Copyright © 2016 Ajay Thaur. All rights reserved.
//

#import "ATUIViewController.h"

@interface ATUIViewController ()

@end

@implementation ATUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) returnToATVC :(UIStoryboardSegue *)segue {
    NSLog(@"ATUIViewController:returnToThisVC in AT - %@", segue.identifier);

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
