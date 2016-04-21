//
//  DetailEmployeeViewController.m
//  hrm
//
//  Created by  on 4/18/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import "DetailEmployeeViewController.h"

@interface DetailEmployeeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtBirth;
@property (weak, nonatomic) IBOutlet UITextField *txtPlace;
@property (weak, nonatomic) IBOutlet UITextField *txtPhone;
@property (weak, nonatomic) IBOutlet UITextField *txtDepartment;

@end

@implementation DetailEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"Selected %@", self.employeeSelected.name);
    self.txtName.text = self.employeeSelected.name;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle: NSDateFormatterLongStyle];
    self.txtBirth.text = [dateFormatter stringFromDate:self.employeeSelected.birthDate];
    
    self.txtPlace.text = self.employeeSelected.placeOfBirth;
    self.txtPhone.text = self.employeeSelected.phone;
    self.txtDepartment.text = self.employeeSelected.department.name;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backListEmployee:(id)sender {
    NSLog(@"Back list employee!");
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

@end
