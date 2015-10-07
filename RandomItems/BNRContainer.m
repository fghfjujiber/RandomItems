//
//  BNRContainer.m
//  RandomItems
//
//  Created by Xiaoming Chen on 15/10/7.
//  Copyright © 2015年 Jackchenxm. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (void)setSubItems:(NSMutableArray *)subItems
{
    _subItems = subItems;
}

- (NSMutableArray *)subItems
{
    return _subItems;
}

- (int)worth
{
    int totalValue = self.valueInDollars;
    
    for (id item in self.subItems){
        if ([item isKindOfClass:[BNRItem class]]) {
            totalValue += [item worth];
        }
    }
    
    return totalValue;
}

- (NSString *)description
{
    NSString *descriptionString = [NSString stringWithFormat:@"%@: worth %d, contain: ",
                                   self.itemName, [self worth]];
    for (id item in self.subItems){
        if ([item isKindOfClass:[BNRItem class]]) {
            descriptionString = [descriptionString stringByAppendingFormat:@"\n%@",[item description]];
        }
    }
    
    return descriptionString;
}

@end
