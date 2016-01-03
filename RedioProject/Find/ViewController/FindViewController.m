//
//  FindViewController.m
//  RedioProject
//
//  Created by garin on 16/1/3.
//  Copyright © 2016年 garin. All rights reserved.
//

#import "FindViewController.h"
#import "MoreTableViewCell.h"

@interface FindViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation FindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController setNavigationBarHidden:YES];
    UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    titleView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:titleView];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(titleView.center.x - 30,titleView.center.y - 10, 60, 30)];
    titleLabel.backgroundColor = [UIColor greenColor];
    titleLabel.text = @"发现";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [titleView addSubview:titleLabel];
    
    UIButton *searchButton = [UIButton buttonWithType:UIButtonTypeSystem];
    searchButton.backgroundColor = [UIColor greenColor];
    searchButton.frame = CGRectMake(titleView.frame.size.width - 40, titleLabel.frame.origin.y, 30, 30);
    [titleView addSubview:searchButton];
    
    UIView *titleSubView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(titleView.frame), self.view.frame.size.width, 35)];
    titleSubView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:titleSubView];
    
    UILabel *recommendLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, titleSubView.frame.size.width/5, titleSubView.frame.size.height - 2)];
    recommendLabel.backgroundColor = [UIColor blackColor];
    [titleSubView addSubview:recommendLabel];
    
    UILabel *classifyLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(recommendLabel.frame), 0, titleSubView.frame.size.width/5, titleSubView.frame.size.height - 2)];
    classifyLabel.backgroundColor = [UIColor yellowColor];
    [titleSubView addSubview:classifyLabel];
    
    UILabel *seedingLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(classifyLabel.frame), 0, titleSubView.frame.size.width/5, titleSubView.frame.size.height - 2)];
    seedingLabel.backgroundColor = [UIColor blackColor];
    [titleSubView addSubview:seedingLabel];
    
    UILabel *listLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(seedingLabel.frame), 0, titleSubView.frame.size.width/5, titleSubView.frame.size.height - 2)];
    listLabel.backgroundColor = [UIColor yellowColor];
    [titleSubView addSubview:listLabel];
    
    UILabel *anchorLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(listLabel.frame), 0, titleSubView.frame.size.width/5, titleSubView.frame.size.height - 2)];
    anchorLabel.backgroundColor = [UIColor blackColor];
    [titleSubView addSubview:anchorLabel];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,CGRectGetMaxY(titleSubView.frame),self.view.frame.size.width, self.view.frame.size.height - 64 - titleSubView.frame.size.height - 48)];
    [self.view addSubview:scrollView];
    scrollView.backgroundColor = [UIColor grayColor];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width* 10, 0);
    scrollView.userInteractionEnabled = YES;
    scrollView.bounces = NO;
    
    UITableView *groomTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width,scrollView.frame.size.height) style:UITableViewStyleGrouped];
    groomTableView.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:groomTableView];
    groomTableView.delegate = self;
    groomTableView.dataSource = self;
    [groomTableView registerClass:[MoreTableViewCell class] forCellReuseIdentifier:@"MoreCell"];
    
    
//    UIScrollView *titleScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,0,titleSubView.frame.size.width, 150)];
//    titleScrollView.backgroundColor = [UIColor whiteColor];
//    titleScrollView.contentSize = CGSizeMake(titleScrollView.frame.size.width *9, 0);
//    titleScrollView.userInteractionEnabled = YES;
//    titleScrollView.bounces = NO;
//    [scrollView addSubview:titleScrollView];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 17;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section ==2) {
        return 2;
    }
    if (section == 3) {
        return 4;
    }
    else
    {
        return 1;
    }
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MoreTableViewCell *moreCell = [tableView dequeueReusableCellWithIdentifier:@"MoreCell" forIndexPath:indexPath];
    moreCell.backgroundColor = [UIColor redColor];
    return moreCell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
