//
//  MoreViewController.m
//  NuvitaCardio Pro
//
//  Created by John Bariquit on 5/13/15.
//  Copyright (c) 2015 John Bariquit. All rights reserved.
//

#import "MoreViewController.h"
#import "HistoryViewController.h"

@interface MoreViewController ()

@property (retain, nonatomic) NSArray *list;

@end

@implementation MoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _list = @[@{@"title" : @"My Cardio Program", @"image" : @"program-icon"},
              @{@"title" : @"Stars", @"image" : @"star-icon"},
              @{@"title" : @"Team Wall", @"image" : @"wall-icon"},
              @{@"title" : @"Measure Cardio Fitness (Vo2max)", @"image" : @"measure-icon"},
              @{@"title" : @"Options", @"image" : @"setting-icon"},
              @{@"title" : @"Paired Devices", @"image" : @"paired-icon"}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:cellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.font = [UIFont fontWithName:kfontlight size:14];
    }
    
    NSDictionary *data = _list[indexPath.row];
    cell.textLabel.text = data[@"title"];
    cell.imageView.image = [[UIImage imageNamed:data[@"image"]] colorizedImage:kcolornuvitagray];
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    HistoryViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"History"];
    
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
