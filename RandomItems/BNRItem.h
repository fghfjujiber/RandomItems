//
//  BNRItem.h
//  
//
//  Created by Xiaoming Chen on 15/10/5.
//
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

+ (instancetype)randomItem;


- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)number valueInDollar:(int)value;
- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)number;
- (instancetype)initWithItemName:(NSString *)name;

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;
- (int)worth;

@end
