//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

-(NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSString *result = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];

    return result;
    
}
-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badgesForSpeakers = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i <= [speakers count]-1; i++) {
        NSString *badgeForSpeaker =[self badgeForSpeaker: speakers[i]];
                [badgesForSpeakers addObject:badgeForSpeaker];
    }
    
    return badgesForSpeakers;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetingsAndRoomAssignmentsForSpeakers = [[NSMutableArray alloc] init];
    
    //nsarry *myArray = @[];
    // ( )
    
    for (NSInteger i = 0; i <= [speakers count]-1; i++) {
        
        NSString *greetingAndRoomAssignmentForSpeaker = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.", speakers[i], i+1];
        
                   [greetingsAndRoomAssignmentsForSpeakers addObject:greetingAndRoomAssignmentForSpeaker];
                }
    return greetingsAndRoomAssignmentsForSpeakers;
}

@end
