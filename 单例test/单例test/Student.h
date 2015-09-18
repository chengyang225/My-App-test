//
//  Student.h
//  单例test
//
//  Created by ChanIan on 15/9/18.
//  Copyright © 2015年 ChanIan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject<NSCopying>
+(instancetype)sharedStudent;
@end
