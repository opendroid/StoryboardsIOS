//
//  ViewController.m
//  Colors
//
//  Created by Ajay Thakur on 1/23/16.
//  Copyright © 2016 Ajay Thaur. All rights reserved.
//

#import "ViewController.h"
#import "ATUIViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *retrunFromVCNameUIL;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Option 1: to call a view controller. Create a VC from storyboard and
//           then prsent it. You can wrote data in created VC
//
- (IBAction)redSceneHandler:(UIButton *)sender {
    ATUIViewController *redVC = [self.storyboard instantiateViewControllerWithIdentifier:@"redScene"];
    redVC.view.backgroundColor = [UIColor redColor];
    redVC.nameOfThisVC = @"Red";
    [self presentViewController:redVC animated:YES completion:^{
        NSLog(@"ViewController:redSceneHandler: Red Finished");
    }];
}

// Option 2: Perform using Segue. Send data to 'to-be' presented VC
//           Access data of the VC in 'prepareForSeague'
- (IBAction)greenSceneHandler:(UIButton *)sender {
    [self performSegueWithIdentifier:@"greenScreenSegue" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ATUIViewController *presentedVC = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"greenScreenSegue"]) {
        presentedVC.view.backgroundColor = [UIColor greenColor];
        presentedVC.nameOfThisVC = @"Green";
    } else if ([segue.identifier isEqualToString:@"automaticSegueToBlueVC"]) {
        presentedVC.view.backgroundColor = [UIColor blueColor];
        presentedVC.nameOfThisVC = @"Blue";
    }
}

// Option 3: Automatic on "Blue" button.  Send data to new VC using 'prepareForSeague'
- (IBAction) returnToMainVC :(UIStoryboardSegue *)segue {
    NSLog(@"ViewController:returnToThisVC - %@", segue.identifier);
    if ([segue.sourceViewController isKindOfClass:[ATUIViewController class]]) {
        ATUIViewController *presentedVC = segue.sourceViewController;
        self.retrunFromVCNameUIL.text = [NSString stringWithFormat:@"Returned from VC: %@", presentedVC.nameOfThisVC];
    } else
        self.retrunFromVCNameUIL.text = [NSString stringWithFormat:@"Returned from Pink"];
}

@end
