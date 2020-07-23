//
//  main.m
//  NOCList-ObjC
//
//  Created by patelpra on 7/22/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // MARK: Step 2

        LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jim Phelps" accessLevel:9 compromised:YES];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkunaite" accessLevel:5 compromised:YES];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *agent11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        
        NSArray *agents = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
        // MARK: Step 3
        
        int totalNumberOfCompromisedAgents = 0;
        
        for (LSIAgent *agent in agents) {
            if ([agent.compromised isEqualToNumber:@YES]) {
                totalNumberOfCompromisedAgents += 1;
            }
        }
        
        NSLog(@"The total number of compromised agents is %d.", totalNumberOfCompromisedAgents);
        
        // MARK: Step 4
        
        int totalNumberOfCleanAgents = 0;
        
        for (LSIAgent *agent in agents) {
            if ([agent.compromised isEqualToNumber:@NO]) {
                NSLog(@"Agent is clean: %@,=.", agent.coverName);
                totalNumberOfCleanAgents += 1;
            }
        }
        
        NSLog(@"The total number of clean agents is %d.", totalNumberOfCleanAgents);
       
        // MARK: Step 5
        
        for (LSIAgent *agent in agents) {
            NSString *agentStatus;
            
            if ([agent.accessLevel isGreaterThanOrEqualTo:@8]) {
                agentStatus = [NSString stringWithFormat:@"%@, level: %@", agent.realName, agent.accessLevel];
                
                if([agent.compromised isEqualToNumber:@YES]) {
                    agentStatus = [agentStatus stringByAppendingFormat:@" **WARNING** **COMPROMISED**"];
                }
                
                NSLog(@"%@", agentStatus);
            }
        }
        
      
        
    }
    return 0;
}
