//
//  ViewController.m
//  MyTableView
//
//  Created by Sarosh Salman Mirza on 02/02/16.
//  Copyright (c) 2016 mycodenights. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    recipes = [NSArray arrayWithObjects:@"Alice Chicken", @"Chicken Tikka", @"Slow Cooker Butter Chicken", @"Homemade Chicken Enchiladas", @"Baked Garlic Parmesan Chicken", @"Slow Cooker Chicken Stroganoff ", @"The Best Chicken Soup Ever", @"Brooklyn Girl's Penne Arrabiata", @"Chicken Pot Pie IX", @"Slow Cooker Chicken and Dumplings", @"Cha Cha's White Chicken Chili ", @"Baked Teriyaki Chicken", @"Chicken Cordon Bleu II", @"Slow Cooker Chicken Taco Soup", @"Zesty Slow Cooker Chicken Barbecue", @"Buffalo Chicken Dip", nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}

@end
