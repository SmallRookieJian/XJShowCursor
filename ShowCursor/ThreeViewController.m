//
//  ThreeViewController.m
//  KeyboardProblem
//
//  Created by trq on 16/12/3.
//  Copyright © 2016年 Jean. All rights reserved.
//

#import "ThreeViewController.h"

#import "SecondViewController.h"

@interface ThreeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *buttonTF;
@property (weak, nonatomic) IBOutlet UITextField *textField2;

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textField.backgroundColor = [UIColor cyanColor];
    self.textField2.backgroundColor = [UIColor orangeColor];
    
    
//    self.textField.inputView = [[UIView alloc] init];
//    [self.textField becomeFirstResponder];
    
//    [self.textField addTarget:self action:@selector(tfBeginEdit:) forControlEvents:UIControlEventEditingDidBegin];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [self showCursor];
    
    self.buttonTF.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//
//- (void)tfBeginEdit:(UITextField *)textField {
//    
//    
//}

- (IBAction)btnGoBackClicked:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)btnTFClicked:(UIButton *)sender {
    
    self.textField.inputView = nil;
    [self.textField reloadInputViews];
    
    sender.hidden = YES;
    
}

- (IBAction)btnForwardClicked:(id)sender {
    
    SecondViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    [self presentViewController:viewController animated:YES completion:nil];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
    
    self.buttonTF.hidden = NO;
    [self showCursor];
}

- (void)showCursor {
    
    self.textField.inputView = [[UIView alloc] init];
    [self.textField becomeFirstResponder];
    
}

@end
