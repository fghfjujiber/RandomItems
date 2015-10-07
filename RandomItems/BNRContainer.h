//
//  BNRContainer.h
//  RandomItems
//
//  Created by Xiaoming Chen on 15/10/7.
//  Copyright © 2015年 Jackchenxm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *_subItems;
}

- (void)setSubItems:(NSMutableArray *)subItems;
- (NSMutableArray *)subItems;

@end
