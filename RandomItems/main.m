//
//  main.m
//  RandomItems
//
//  Created by Xiaoming Chen on 15/10/5.
//  Copyright © 2015年 Jackchenxm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...balabala miaomiaomiao miaonu
        
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        [items addObject:@"zero"];
        [items addObject:@"one"];
        [items addObject:@"two"];
        [items addObject:@"three"];
        
        for (NSString *item in items) {
            NSLog(@"%@",item);
        }
        
        BNRItem *item = [[BNRItem alloc]init];
        item.itemName = @"GD";
        item.serialNumber = @"jiyong";
        item.valueInDollars = 1988;
        
        //NSLog(@"%@, %@, %d, %@", item.itemName, item.serialNumber, item.valueInDollars, item.dateCreated);
        
        NSLog(@"%@", item);
        
    }
    return 0;
}
