//
//  NSDictionary+Extention.m
//  Pods
//
//  Created by Hiroki Yoshifuji on 2013/12/12.
//
//

#import "NSDictionary+Extention.h"

@implementation NSDictionary (Extention)

-(BOOL)enableValue:(id)key
{
    if (![self objectForKey:key]) return NO;
    id object = [self objectForKey:key];
    if (!object) return NO;
    if ([object isKindOfClass:[NSNull class]]) return NO;
    return YES;
}


@end
