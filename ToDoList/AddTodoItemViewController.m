//
//  AddTodoItemViewController.m
//  ToDoList
//
//  Created by ZhongxingWang on Apr/1/15.
//  Copyright (c) 2015 Alpha. All rights reserved.
//

#import "AddTodoItemViewController.h"

@interface AddTodoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *SaveButton;

@end

@implementation AddTodoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if (sender != self.SaveButton) return;
    
    if (self.textField.text.length > 0 ) {
        self.todoItem = [[TodoItem alloc] init];
        self.todoItem.itemName = self.textField.text;
        self.todoItem.completed = NO;
    }
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
