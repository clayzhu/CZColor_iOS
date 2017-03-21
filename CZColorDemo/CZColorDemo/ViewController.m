//
//  ViewController.m
//  CZColorDemo
//
//  Created by Apple on 2017/3/20.
//  Copyright © 2017年 Ugoodtech. All rights reserved.
//

#import "ViewController.h"

static NSString *kColorCell = @"ColorCell";

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//	[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kColorCell];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
	return 3;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kColorCell forIndexPath:indexPath];
	cell.backgroundColor = [UIColor purpleColor];
	return cell;
}

#pragma mark - UICollectionViewDelegate

#pragma mark - UICollectionViewDelegateFlowLayout
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
	return 1.0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
	return 1.0;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
	return UIEdgeInsetsMake(0.5, 0.5, 0.5, 0.5);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
	return CGSizeMake(CGRectGetWidth([UIScreen mainScreen].bounds) / 2.0 - 1.0, CGRectGetWidth([UIScreen mainScreen].bounds) / 2.0 - 1.0);
}

@end
