//
//  ViewController.m
//  Ping-Pong
//
//  Created by macbook on 25.05.2021.
//

#import "GameViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define HALF_SCREEN_WIDTH SCREEN_WIDTH/2
#define HALF_SCREEN_HEIGHT SCREEN_HEIGHT/2
#define MAX_SCORE 6

@interface GameViewController ()

@property (strong, nonatomic) UIImageView *paddleTop;
@property (strong, nonatomic) UIImageView *paddleBottom;
@property (strong, nonatomic) UIView *gridView;
@property (strong, nonatomic) UIView *ball;
@property (strong, nonatomic) UITouch *topTouch;
@property (strong, nonatomic) UITouch *bottomTouch;
@property (strong, nonatomic) NSTimer * timer;
@property (nonatomic) float dx;
@property (nonatomic) float dy;
@property (nonatomic) float speed;
@property (strong, nonatomic) UILabel *scoreTop;
@property (strong, nonatomic) UILabel *scoreBottom;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self config];
}

- (void)config {
    self.view.backgroundColor = [UIColor colorWithRed:100.0/255.0 green:135.0/255.0 blue:191.0/255.0 alpha:1.0];
    
    [self addGridView];
    [self addBall];
    
    _paddleTop = [self createPaddle:@"paddleTop" andHight:40];
    [self.view addSubview:_paddleTop];
    
    _paddleBottom = [self createPaddle:@"paddleBottom" andHight:SCREEN_HEIGHT - 90];
    [self.view addSubview:_paddleBottom];
    
    _scoreTop = [self createLabel:HALF_SCREEN_HEIGHT - 70];
    [self.view addSubview:_scoreTop];
    
    _scoreBottom = [self createLabel:HALF_SCREEN_HEIGHT + 70];
    [self.view addSubview:_scoreBottom];
}

-(void)addGridView {
    _gridView = [[UIView alloc] initWithFrame:CGRectMake(0, HALF_SCREEN_HEIGHT - 2, SCREEN_WIDTH, 4)];
    _gridView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.5];
    [self.view addSubview:_gridView];
}

-(void)addBall {
    _ball = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 10, self.view.center.y - 10, 20, 20)];
    _ball.backgroundColor = [UIColor whiteColor];
    _ball.layer.cornerRadius = 10;
    _ball.hidden = YES;
    [self.view addSubview:_ball];
}

- (UIImageView*)createPaddle:(NSString *)name andHight:(NSInteger)hight {
    UIImageView *paddle = [[UIImageView alloc] initWithFrame:CGRectMake(30, hight, 90, 60)];
    paddle.image = [UIImage imageNamed:name];
    paddle.contentMode = UIViewContentModeScaleAspectFit;
    return paddle;
}

-(UILabel*)createLabel:(NSInteger)hight {
    UILabel *score = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 70, hight, 50, 50)];
    score.textColor = [UIColor whiteColor];
    score.text = @"0";
    score.font = [UIFont systemFontOfSize:40.0 weight:UIFontWeightLight];
    score.textAlignment = NSTextAlignmentCenter;
    return score;
}

@end
