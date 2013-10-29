//
//  COINSViewController.m
//  SLEquation
//
//  Created by 山田悠加 on 2013/10/24.
//  Copyright (c) 2013年 Haruka. All rights reserved.
//

/* 飯島
 編集、アドバイスを開始しました(Oct 30)
 
 */

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
	
	srand(time(NULL)); //(応用)これはC言語の関数なのでnilではなく、NULLにします
	int n1 = rand() % 50 + 1; // 演算子の前後にはスペースを入れると見やすいです
	int n2 = rand() % 50 + 1;
	
	
	NSInteger answer;
	Equation *equation = [[Equation alloc] init];
	answer = [equation finishWithInteger:n1 WithInteger:n2];
	
	NSLog(@"n1 = %d",n1); //ログで何を表示しているか確認できるようにしましょう
	NSLog(@"n2 = %d",n2);
	NSLog(@"ans = %d",answer);
	
	// ラベルの名前に意味をもたせよう
	UILabel *answerLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 500, 600, 100)];
	answerLabel.text = [NSString stringWithFormat:@"%d",n1]; // x + n1 = n2 を表示したいよー
	answerLabel.textAlignment = NSTextAlignmentCenter;
	answerLabel.textColor = [UIColor redColor];
	[self.view addSubview:answerLabel];
}


- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
