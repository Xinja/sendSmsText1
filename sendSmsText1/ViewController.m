//
//  ViewController.m
//  sendSmsText1
//
//  Created by Patrik  on 3/26/16.
//  Copyright © 2016 Xinja. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

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



-(IBAction)sendSms:(id)sender{
   
    MFMessageComposeViewController *textComposer = [[MFMessageComposeViewController alloc]init];
    [textComposer setMessageComposeDelegate:self];
    if ([MFMessageComposeViewController canSendText]){
        
        [textComposer setRecipients:[NSArray arrayWithObjects:nil]];
        [textComposer setBody:@"Hello World!"];
        [self presentViewController:textComposer animated:YES completion:NULL];
    } else {
        
        NSLog(@"cant open text");
        
    }
    
}

-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    [self dismissViewControllerAnimated:YES completion:NULL];
    
    
}


@end
