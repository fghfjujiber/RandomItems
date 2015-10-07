//
//  main.m
//  RandomItems
//
//  Created by Xiaoming Chen on 15/10/5.
//  Copyright © 2015年 Jackchenxm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRContainer.h"

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
        
//        BNRItem *item = [[BNRItem alloc]init];
//        item.itemName = @"GD";
//        item.serialNumber = @"jiyong";
//        item.valueInDollars = 1988;
        
//        NSLog(@"%@, %@, %d, %@", item.itemName, item.serialNumber, item.valueInDollars, item.dateCreated);
        
        BNRItem *itemWithAllDetails = [[BNRItem alloc]initWithItemName:@"GD" serialNumber:@"jiyong" valueInDollar:1988];
        
        NSLog(@"%@", itemWithAllDetails);
        
        
        BNRItem *itemWithNameAndNumber = [[BNRItem alloc]initWithItemName:@"TOP" serialNumber:@"tarbee"];
        
        NSLog(@"%@", itemWithNameAndNumber);
        
        BNRItem *itemWithOneName = [[BNRItem alloc]initWithItemName:@"Taeyang"];
        
        NSLog(@"%@", itemWithOneName);
        
        BNRItem *blankItem = [[BNRItem alloc]init];
        
        NSLog(@"%@", blankItem);
        
        NSLog(@"----------------------------------------");
        
//        BNRItem *randomItem = [BNRItem randomItem];
//        
//        NSLog(@"%@", randomItem);
        
        NSMutableArray *randomItemArray = [[NSMutableArray alloc]init];
        for (int i=0; i<10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [randomItemArray addObject:item];
        }
        
        NSMutableArray *subItemArray = [[NSMutableArray alloc]init];
        for (int i=0; i<10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [subItemArray addObject:item];
        }
        
//        for (id item in randomItemArray) {
//            NSLog(@"%@",item);
//        }
        
        BNRContainer *container = [[BNRContainer alloc]init];
        container.subItems = randomItemArray;
        container.itemName = @"BigBang";
        
        BNRContainer *subContainer = [[BNRContainer alloc]init];
        subContainer.subItems = subItemArray;
        subContainer.itemName = @"Winner";
        
        [container.subItems addObject:subContainer];
        
        NSLog(@"%@", container);
    }
    return 0;
}
