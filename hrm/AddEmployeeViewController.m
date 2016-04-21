//
//  AddEmployeeViewController.m
//  hrm
//
//  Created by  on 4/20/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "EmployeeService.h"
#import "DepartmentDTO.h"
#import "DepartmentService.h"
#import "EmployeeDTO.h"

@interface AddEmployeeViewController ()

@property (nonatomic) DepartmentService *departmentSerivce;
@property (nonatomic) EmployeeService *employeeService;

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtPlace;
@property (weak, nonatomic) IBOutlet UITextField *txtPhone;
@property (weak, nonatomic) IBOutlet UITextField *txtBirth;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerDepartment;

@property (nonatomic) NSArray *pickerData;

@property (nonatomic) UIDatePicker *datePicker;

@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.datePicker = [[UIDatePicker alloc] init];
    [self.datePicker addTarget:self action:@selector(updateTextField:)
         forControlEvents:UIControlEventValueChanged];
    [self.txtBirth setInputView:self.datePicker];
    
    // Do any additional setup after loading the view.
    self.departmentSerivce = [DepartmentService new];
    self.employeeService = [EmployeeService new];
    
    self.pickerDepartment.dataSource = self;
    self.pickerDepartment.delegate = self;
    
    _pickerData = [self.departmentSerivce getAllDepartment];
}

- (void)updateTextField:(UIDatePicker *)sender
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle: NSDateFormatterLongStyle];
    self.txtBirth.text = [dateFormatter stringFromDate:sender.date];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addEmployee:(id)sender {
    EmployeeDTO *employee = [EmployeeDTO new];
    employee.status = TRUE;
    employee.active = TRUE;
    employee.name = self.txtName.text;
    employee.placeOfBirth = self.txtPlace.text;
    employee.phone = self.txtPhone.text;
    employee.birthDate = [self.datePicker date];

    NSInteger *row = [self.pickerDepartment selectedRowInComponent:0];
    DepartmentDTO *department = [self.pickerData objectAtIndex:row];
    employee.department = department;
    
    [self.employeeService addEmployee:employee];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelAddEmployee:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    DepartmentDTO *department = [_pickerData objectAtIndex:row];
    return department.name;
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
