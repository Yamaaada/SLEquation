//
//  COINSViewController.m
//  SLEquation
//
//  Created by 山田悠加 on 2013/10/24.
//  Copyright (c) 2013年 Haruka. All rights reserved.
//

#import "COINSViewController.h"
#import "Equation.h"

@interface COINSViewController ()

@end

@implementation COINSViewController{

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


    
    srand(time(nil));
    int n1 = rand()%50 + 1;
    int n2 = rand()%50 + 1;
    
    
    NSInteger answer;
    Equation *equation = [[Equation alloc] init];
    answer = [equation finish:n1 :n2];
    
    NSLog(@"%d",n1);
    NSLog(@"%d",n2);
    NSLog(@"%d",answer);
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 500, 600, 100)];
    label.text = [NSString stringWithFormat:@"%d",n1];//x + n1 = n2 を表示したいよー;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor =[ UIColor redColor];
    [self.view addSubview:label];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
