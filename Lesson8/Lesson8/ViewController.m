//
//  ViewController.m
//  Lesson8
//
//  Created by macbook on 26.05.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Загрузка");
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"Перед отображением на экране");
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"Отображение на экране");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"Перед закрытием контролера");
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"После закрытия контролера");
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    NSLog(@"Поворот экрана");
}

@end
