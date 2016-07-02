//
//  ATDetailTableCellViewController.m
//  TableViewSegues
//
//  Created by Ajay Thakur on 1/24/16.
//  Copyright © 2016 Ajay Thaur. All rights reserved.
//

#import "ATDetailTableCellViewController.h"

@interface ATDetailTableCellViewController ()

@end

@implementation ATDetailTableCellViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.titleText;
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
