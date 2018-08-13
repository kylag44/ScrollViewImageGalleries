//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Kyla  on 2018-08-13.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic) UIImageView *imageView1;
@property (nonatomic) UIImageView *imageView2;
@property (nonatomic) UIImageView *imageView3;

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpScrollView];
    [self setupLayout];
    
    
}


- (void)setUpScrollView {
    
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    [self.view addSubview:scrollView];
    self.scrollView = scrollView;
    self.scrollView.pagingEnabled = YES;
    
    UIImage *image1 = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:image1];
    imageView1.contentMode = UIViewContentModeScaleAspectFit;
    imageView1.clipsToBounds = YES;
    [self.scrollView addSubview:imageView1];
    self.imageView1 = imageView1;
    
    UIImage *image2 = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:image2];
    imageView2.contentMode = UIViewContentModeScaleAspectFit;
    imageView2.clipsToBounds = YES;
    [self.scrollView addSubview:imageView2];
    self.imageView2 = imageView2;
    
    UIImage *image3 = [UIImage imageNamed:@"Lighthouse.jpg"];
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:image3];
    imageView3.contentMode = UIViewContentModeScaleAspectFit;
    imageView3.clipsToBounds = YES;
    [self.scrollView addSubview:imageView3];
    self.imageView3 = imageView3;
}

-(void)setupLayout {
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView3.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.scrollView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.scrollView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [self.scrollView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [self.scrollView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    
    ////image view 1
    [self.imageView1.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [self.imageView1.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [self.imageView1.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor].active = YES;
    ///width and height
    [self.imageView1.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [self.imageView1.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    
    ////image veiw 2
    [self.imageView2.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [self.imageView2.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [self.imageView2.leadingAnchor constraintEqualToAnchor:self.imageView1.trailingAnchor].active = YES;
    ///width and height
    [self.imageView2.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [self.imageView2.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    
    ////image view 3
    [self.imageView3.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [self.imageView3.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [self.imageView3.leadingAnchor constraintEqualToAnchor:self.imageView2.trailingAnchor].active = YES;
    [self.imageView3.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor].active = YES;
    ///width and height
    [self.imageView3.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [self.imageView3.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
}








@end
