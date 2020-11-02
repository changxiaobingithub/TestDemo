//
//  HPWebViewController.m
//  TestDemos
//
//  Created by 常肖彬 on 2020/3/28.
//  Copyright © 2020 XiaoBinChang. All rights reserved.
//

#import "HPWebViewController.h"
#import <WebKit/WebKit.h>

@interface HPWebViewController ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation HPWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"webView";


    self.view.backgroundColor = [UIColor grayColor];
//    self.webView.frame = CGRectMake(50, 100, CGRectGetWidth(self.view.frame)-100, 400);
    self.webView.frame = self.view.frame;
    self.webView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.webView];
    NSString *str = @"http://www.hikparking.com.cn/front_alpha/#/notice?parkId=0&driverDealerId=0&noticeType=99";
    NSURL *url = [NSURL URLWithString:str];
//    NSURL *url = [NSURL URLWithString:@"https://www.jianshu.com/p/1a0a58cf6fab"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:request];
}

- (WKWebView *)webView {
    if (!_webView) {
        _webView = [[WKWebView alloc] init];
        _webView.navigationDelegate = self;
        
    }
    return _webView;
}



@end
