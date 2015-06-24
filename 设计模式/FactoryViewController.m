//
//  FactoryViewController.m
//  设计模式
//
//  Created by zhougj on 15/6/23.
//  Copyright (c) 2015年 iiseeuu. All rights reserved.
//

#import "FactoryViewController.h"

@interface FactoryViewController ()

@end

@implementation FactoryViewController


/**
 *  工厂设计模式:一个类无法预期需要生成哪个类的对象，想让其子类来指定所生成的对象
 *  定义创建对象的接口，让子类决定实例化哪一个类
 *  每一种产品提供一个工厂类。通过不同的工厂实例来创建不同的产品实例
 */

/*
 * 抽象工厂:提供一个创建一系列相关或相互依赖对象的接口，而无需指定他们具体的类
 */


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
