//
//  ViewController.m
//  algorithm
//
//  Created by Godfather on 6/18/17.
//  Copyright © 2017 Godfather. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSMutableArray *imagesData;
@property (strong, nonatomic) NSArray *imagesDataLocal;
@property (strong, nonatomic) NSMutableDictionary *xxxxxx;
@property (assign, nonatomic) BOOL firstClick;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstClick = YES;
    [self algorithmXXX];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)start:(UIButton *)sender {
    if (self.firstClick) {
        [self algorithm:@"image_2"];
        self.firstClick = NO;
    }
}



-(void)algorithmXXX {
    // Khởi tạo mảng
    self.imagesData = [NSMutableArray new];
    self.xxxxxx = [NSMutableDictionary new];
    
    // Chạy vòng lặp
    for (int i = 1; i <= 25; i++) {
        // Lấy tên hình
        NSString *imageWithIndex = [NSString stringWithFormat:@"image_%d", i];
        // Gán hình vào image
        [self.imagesData addObject:imageWithIndex];
    }
}


-(void)algorithm:(NSString *)requestImage{
    // Chạy vòng lặp
    for (int i = 0; i < [self.imagesData count]; i++) {
        // Khởi tạo nhiều imageView
        self.imgView = [[UIImageView alloc] init];
        [self.imgView setTag:i];
        int randX = arc4random() % 256;
        int randY = arc4random() % 256;
        // Gán tọa độ cho imageView
        [self.imgView setFrame:CGRectMake(randX, randY, 44, 44)];
        // [self.imgView setFrame:CGRectMake(0, 0, 300, 300)];
        
        
        // Gán hình vào image
        [self.imgView setImage:[UIImage imageNamed:self.imagesData[i]]];
        
        // Gán gesture vào image
        [self.imgView setUserInteractionEnabled:YES];
        [self.imgView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showDetail:)]];
        
        if ([self.imagesData[i] isEqualToString:requestImage]) {
            [[self.imgView layer] setZPosition:1];
        }
        //NSString *keyWithTag = [NSString stringWithFormat:@"%ld", (long)self.imgView.tag];
        // Gán imageView vào placeholderView
        [self.placeholderView addSubview:self.imgView];
        //[self.xxxxxx setObject:[NSString stringWithFormat:@"image_%d", i] forKey:keyWithTag];
    }
}

-(void)showDetail:(UIGestureRecognizer *)recognizer {
    
}

@end
