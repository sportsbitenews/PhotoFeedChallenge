//
//  FeedTableViewCell.m
//  PhotoFeedChallenge
//
//  Created by Greg on 08/11/2014.
//  Copyright (c) 2014 Greg Gunner. All rights reserved.
//

#import "GRGFeedTableViewCell.h"

@interface GRGFeedTableViewCell()
@property (nonatomic,strong) UIImageView* photoImageView;
@property (nonatomic,strong) UILabel* titleLabel;
@end

@implementation GRGFeedTableViewCell

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self.contentView setBackgroundColor:[UIColor whiteColor]];
        
        self.photoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width, 100.0f)];
        [self.photoImageView setBackgroundColor:[UIColor colorWithWhite:0.8 alpha:1.0]];
        [self.photoImageView setOpaque:YES];
        [self.photoImageView setContentMode:UIViewContentModeScaleAspectFill];
        [self.contentView addSubview:self.photoImageView];
        
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 30.0f)];
        [self.titleLabel setBackgroundColor:self.contentView.backgroundColor];
        [self.titleLabel setOpaque:YES];
        [self.titleLabel setTextColor:[UIColor blackColor]];
        [self.titleLabel setFont:[UIFont systemFontOfSize:16.0f]];
        [self.contentView addSubview:self.titleLabel];
    }
    return self;
}

- (void)prepareForReuse
{
    [self.photoImageView setImage:nil];
}

- (void) setTitleText:(NSString*)newText
{
    [self.titleLabel setText:newText];
}

- (void) setPhotoImage:(UIImage*)newPhotoImage
{
    [self.photoImageView setImage:newPhotoImage];
}

@end
