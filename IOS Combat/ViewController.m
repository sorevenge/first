//
//  ViewController.m
//  IOS Combat
//
//  Created by wanghanbin on 15/1/6.
//  Copyright (c) 2015年 wanghanbin. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "UIImage+ImageEffects.h"
//static char emailAddressKey;
@interface ViewController ()

//@property (nonatomic, strong) IBOutlet UIImageView *bgImageView;
//@property (strong, nonatomic) CALayer *layer;

@end

@implementation ViewController
@synthesize bgimg,layer;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressbtn:(id)sender
{
//    layer = [CALayer layer];
//    layer.frame = CGRectMake(80, 100, 160, 160);
//    [self.view.layer addSublayer:layer];
//    
//    float scale = [UIScreen mainScreen].scale;
//    UIGraphicsBeginImageContextWithOptions(self.view.frame.size, YES, scale);
//    [self.view drawViewHierarchyInRect:self.view.frame afterScreenUpdates:NO];
//    __block UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    CGImageRef imageref = CGImageCreateWithImageInRect(image.CGImage, CGRectMake(self.layer.frame.origin.x *scale, self.layer.frame.origin.y*scale, self.layer.frame.size.width * scale, self.layer.frame.size.height * scale));
//    image = [UIImage imageWithCGImage:imageref];
//    image = [image applyBlurWithRadius:50.0f tintColor:[UIColor colorWithRed:0 green:1 blue:0 alpha:0.1] saturationDeltaFactor:2.0f maskImage:nil];
//    layer.contents = (__bridge id)(image.CGImage);
//    
//    
//    id interestingObject = nil;
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//    objc_setAssociatedObject(alert, &emailAddressKey, interestingObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    [alert show];
    
    
    NSString *url = @"http://www.baidu.com/wiki/Special:Search?search=ios";
    NSURLComponents *components = [NSURLComponents componentsWithString:url];
    NSString *host = components.host;
    NSLog(@"%@",host);
    components.host = @"www.sina.com";
    NSURL *esURL = [components URL];
    NSLog(@"%@",esURL);
    
    
    
    CFMutableStringRef string = CFStringCreateMutableCopy(NULL, 0, CFSTR("王汉斌"));
    NSLog(@"%@",string);
    CFStringTransform(string, NULL, kCFStringTransformToLatin, false);
    NSLog(@"%@",string);
    CFStringTransform(string, NULL, kCFStringTransformStripCombiningMarks, false);
    NSLog(@"%@",string);
    
//    NSData *data = [NSData alloc];
//    [data initWithBase64EncodedString: options:];
//    [data base64EncodedStringWithOptions:];
//    
//    NSString *str = @"str";
//    [str stringByRemovingPercentEncoding];
//    [str stringByAddingPercentEncodingWithAllowedCharacters:];
    
    NSArray *Array = [[NSArray alloc] init];
    [Array firstObject];
    [Array lastObject];
    [Array objectAtIndex:0];
    
}

//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    UIButton *sender = objc_getAssociatedObject(alertView, &emailAddressKey);
//    NSLog(@"%@",sender.titleLabel.text);
//}




































@end
