//
//  DetailViewController.m
//  PhotoApp
//
//  Created by karthi on 1/21/17.
//  Copyright © 2017 tringapps. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () 

@end

@implementation DetailViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    [self.view addSubview:_collectionView];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _Images.count;
    
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
   UIImageView *photoImageView = (UIImageView *)[cell viewWithTag:100];
    
    
    photoImageView.image = [UIImage imageNamed:[_Images objectAtIndex:indexPath.row]];
    //cell.backgroundColor = [UIColor redColor];
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
