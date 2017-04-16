//
//  CoverFlow.m
//  170324_CoverFlow
//
//  Created by Won Suk Choi on 2017. 3. 24..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "CoverFlow.h"

@implementation CoverFlow

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    
    NSArray *attributesInRect = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray *resultAttributesArray = [[NSMutableArray alloc] init];
    
    for (UICollectionViewLayoutAttributes *attribute in attributesInRect) {
        
        UICollectionViewLayoutAttributes *copyAttribute = [attribute copy];
        
        CGFloat collectionViewCenter = self.collectionView.contentOffset.x + (self.collectionView.bounds.size.width) / 2.0f;
        
        CGFloat nextDistance = self.itemSize.width + self.minimumLineSpacing;
        CGFloat distance = MIN(fabs(attribute.center.x  - collectionViewCenter), maxDistance);
        
        CGFloat ratio = (maxDistance - distance) / maxDistance;
        
        CGFloat itemScale = 1.0f + (0.5f * ratio);
        CGFloat itemAlpha = 0.5f + (0.5f * ratio);
        
        copyAttribute.alpha = itemAlpha;
        copyAttribute.transform3D = CATransform3DScale(CATransform3DIdentity, itemScale, itemScale, 1);
        copyAttribute.zIndex = 10 * itemAlpha;
        
        [resultAttributesArray addObject:copyAttribute];
    }
    
    return resultAttributesArray;
}


- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    
    return YES;
}


-(CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity {
    
    CGFloat actualOffSet = proposedContentOffset.x + (self.collectionView.bounds.size.width / 2.0f);
    
    NSArray *attributedArray = [self layoutAttributesForElementsInRect:self.collectionView.bounds];
        
    attributedArray = [attributedArray sortedArrayUsingComparator:^NSComparisonResult(UICollectionViewLayoutAttributes *_Nonnull obj1, UICollectionViewLayoutAttributes *_Nonnull obj2) {
        
        if (fabs(obj1.center.x - actualOffSet) > (obj2.center.x - actualOffSet)) {
            return NSOrderedDescending;
            
        } else if (fabs(obj1.center.x - actualOffSet) < fabs(obj2.center.x - actualOffSet)) {
            return NSOrderedAscending;
            
        } else {
            return NSOrderedSame;
        }
    }];
    }
}

@end
