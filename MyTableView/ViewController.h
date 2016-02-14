//
//  ViewController.h
//  MyTableView
//
//  Created by Sarosh Salman Mirza on 02/02/16.
//  Copyright (c) 2016 mycodenights. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *recipes;
}
@end

