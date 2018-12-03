//
//  DetailViewController.h
//  PhotoApp
//
//  Created by karthi on 1/21/17.
//  Copyright © 2017 tringapps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (strong,nonatomic) NSArray *Images;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;




@end
