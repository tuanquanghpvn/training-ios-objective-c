//
//  AddDepartmentViewController.m
//  hrm
//
//  Created by  on 4/14/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import "AddDepartmentViewController.h"
#import "DepartmentDTO.h"

@interface AddDepartmentViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtName;

@end

@implementation AddDepartmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.departmentService = [DepartmentService new];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelAddDepartment:(id)sender {
    NSLog(@"Cancel add department!");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)addDepartment:(id)sender {
    if (![self.txtName.text isEqualToString:@""]) {
        DepartmentDTO *department = [DepartmentDTO new];
        department.name = self.txtName.text;
        
        [self.departmentService addDepartment:department];
        NSLog(@"Save department!");
    }
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
