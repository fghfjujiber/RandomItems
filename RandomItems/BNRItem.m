//
//  BNRItem.m
//  
//
//  Created by Xiaoming Chen on 15/10/5.
//
//

#import "BNRItem.h"

@implementation BNRItem

+ (instancetype)randomItem
{
    NSArray *randomNouns = @[@"GD", @"Taeyang", @"TOP", @"Daesung", @"Seungri"];
    NSArray *randomAdjs = @[@"Captain", @"Dancer", @"Rapper", @"Vocal", @"Mangnae"];
    
    NSInteger nounIndex = arc4random() % [randomNouns count];
    NSInteger adjIndex = arc4random() % [randomAdjs count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", randomAdjs[adjIndex], randomNouns[nounIndex]];
    
    NSString *randomSerialNumer = [NSString stringWithFormat:@"%c%c%c%c%c%c",
                                   'a' + arc4random() % 26,
                                   'a' + arc4random() % 26,
                                   'a' + arc4random() % 26,
                                   'a' + arc4random() % 26,
                                   'a' + arc4random() % 26,
                                   'a' + arc4random() % 26];
    
    int randomValue = arc4random() % 2000;
    
    BNRItem *newItem = [[self alloc]initWithItemName:randomName serialNumber:randomSerialNumer valueInDollar:randomValue];
    
    return newItem;
}

- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)number valueInDollar:(int)value
{
    self = [super init];
    
    if (self) {
        _itemName = name;
        _serialNumber = number;
        _valueInDollars = value;
        
        _dateCreated = [[NSDate alloc]init];
    }
    
    return self;
}

- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)number
{
    return [self initWithItemName:name serialNumber:number valueInDollar:0];
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name serialNumber:@"" valueInDollar:0];
}

- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}

- (void)setItemName:(NSString *)str
{
    _itemName = str;
}

- (NSString *)itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

- (NSString *)serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}
- (int)valueInDollars
{
    return _valueInDollars;
}

- (NSDate *)dateCreated
{
    return _dateCreated;
}

- (int)worth
{
    return self.valueInDollars;
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"%@(%@): worth $%d, recorded on %@",
                                   self.itemName,
                                   self.serialNumber,
                                   self.valueInDollars,
                                   self.dateCreated];
    return descriptionString;
}

@end



















