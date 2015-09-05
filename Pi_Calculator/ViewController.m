//
//  ViewController.m
//  Pi_Calculator
//
//  Created by Anindya Sengupta on 9/4/15.
//  Copyright (c) 2015 Anindya Sengupta. All rights reserved.
//

#import "ViewController.h"
#import "CalculationOperation.h"

@interface ViewController ()

@property (weak, nonatomic) NSTimer *myTimer;
@property int currentTimeInSeconds;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *txtField;
@property (weak, nonatomic) IBOutlet UIButton *startCalculationButton;

@end

@implementation ViewController

#pragma mark - Variables

CalculationOperation *operation;
NSOperationQueue *queue;

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Calculation

-(void) beginCalculation {
    queue = [[NSOperationQueue alloc] init];
    [queue addObserver:self forKeyPath:@"operations" options:0 context:NULL];
    [queue addOperation:operation];
}

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object
                         change:(NSDictionary *)change context:(void *)context
{
    if (object == queue && [keyPath isEqualToString:@"operations"]) {
        if ([queue.operations count] == 0) {
            DLog(@"queue has completed");
            [self performSelectorOnMainThread:@selector(updateUserInterface) withObject:nil waitUntilDone:NO];
        }
    }
    else {
        [super observeValueForKeyPath:keyPath ofObject:object
                               change:change context:context];
    }
}

- (IBAction)startCalculationButtonTapped:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    _currentTimeInSeconds = 0;
    
    if (operation.isExecuting) {
        [self updateUserInterface];
    }
    else {
        operation = [[CalculationOperation alloc] init];
        
        [btn setTitle:@"Stop Calculation" forState:UIControlStateNormal];
        if (!_myTimer) {
            _myTimer = [self createTimer];
        }
        self.txtField.text = @"";
        self.timerLabel.text = @"00:00:00";
        [self beginCalculation];
    }
}

-(void) updateUserInterface {
    NSMutableString *piVal = operation.valueOfPi.mutableCopy;
    if (piVal.length > 0) {
        [piVal insertString:@"." atIndex:1];
    }
    self.txtField.text = piVal;
    [self.startCalculationButton setTitle:@"Restart Calculation" forState:UIControlStateNormal];
    [self.myTimer invalidate];
    [operation cancel];
    [self.myTimer invalidate];
    _myTimer = nil;
    operation = nil;
}

#pragma mark - Times Square

- (NSTimer *)createTimer {
    return [NSTimer scheduledTimerWithTimeInterval:0.001
                                            target:self
                                          selector:@selector(timerTicked:)
                                          userInfo:nil
                                           repeats:YES];
}

- (void)timerTicked:(NSTimer *)timer {
    
    _currentTimeInSeconds++;
    self.timerLabel.text = [self formattedTime:_currentTimeInSeconds];
}

- (NSString *)formattedTime:(int)totalSeconds
{
    int seconds = totalSeconds % 60;
    int minutes = (totalSeconds / 60) % 60;
    int hours = totalSeconds / 3600;
    
    return [NSString stringWithFormat:@"%02d:%02d:%02d",hours, minutes, seconds];
}




@end
