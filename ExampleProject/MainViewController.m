//
//  MainViewController.m
//  ExampleProject
//
//  Created by Andrey Kulinskiy on 6/5/14.
//  Copyright (c) 2014 Andrey Kulinskiy. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, strong)UILabel* lblTitle;
@property (nonatomic, strong)UILabel* lblTitle2;
@property (nonatomic, strong)UILabel* lblTitle3;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    [self performSelectorOnMainThread:@selector(addAllViews) withObject:nil waitUntilDone:NO];
}

- (void)addAllViews
{
    [self.view addSubview:self.lblTitle];
    [self.view addSubview:self.lblTitle2];
    [self.view addSubview:self.lblTitle3];
    
    NSLog(@"== %@", self.lblTitle.text);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - property
- (UILabel *)lblTitle
{
    if (!_lblTitle) {
        //_lblWeek = [[UILabel alloc]initWithFrame: self.panelSelectWeek.bounds];
        _lblTitle = [[UILabel alloc]initWithFrame: CGRectMake(0, 50, self.view.frame.size.width, 50)];
        _lblTitle.textAlignment = NSTextAlignmentCenter;
        //_lblWeek.backgroundColor = [Utils colorYellow];
        _lblTitle.textColor = [UIColor whiteColor];
        _lblTitle.text = @"Main Branch change 2";
        //_lblWeek.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _lblTitle.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    return _lblTitle;
}

- (UILabel *)lblTitle2
{
    if (!_lblTitle2) {
        //_lblWeek = [[UILabel alloc]initWithFrame: self.panelSelectWeek.bounds];
        _lblTitle2 = [[UILabel alloc]initWithFrame: CGRectMake(0, 120, self.view.frame.size.width, 50)];
        _lblTitle2.textAlignment = NSTextAlignmentCenter;
        //_lblWeek.backgroundColor = [Utils colorYellow];
        _lblTitle2.textColor = [UIColor whiteColor];
        _lblTitle2.text = @"Change 2";
        //_lblWeek.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _lblTitle2.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    return _lblTitle2;
}

- (UILabel *)lblTitle3
{
    if (!_lblTitle3) {
        _lblTitle3 = [[UILabel alloc]initWithFrame: CGRectMake(0, self.lblTitle2.frame.origin.y + self.lblTitle2.frame.size.height + 5, self.view.frame.size.width, 50)];
        _lblTitle3.textAlignment = NSTextAlignmentCenter;
        _lblTitle3.backgroundColor = [UIColor redColor];
        _lblTitle3.textColor = [UIColor whiteColor];
        _lblTitle3.text = @"branch master";
        _lblTitle3.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    return _lblTitle3;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
