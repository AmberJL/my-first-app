//
//  ViewController.m
//  first
//
//  Created by Amber on 2018/5/10.
//  Copyright © 2018年 Amber. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIProgressView *procom;
@property (weak, nonatomic) IBOutlet UILabel *comresult;
@property (weak, nonatomic) IBOutlet UILabel *gameresult;
@property (weak, nonatomic) IBOutlet UIButton *restart;
@property (weak, nonatomic) IBOutlet UIButton *start;
@property (weak, nonatomic) IBOutlet UIButton *jd;
@property (weak, nonatomic) IBOutlet UIButton *st;
@property (weak, nonatomic) IBOutlet UIButton *bu;
@property (weak, nonatomic) IBOutlet UIProgressView *prohuman;
@property(nonatomic,assign)int  player;
@property(nonatomic,assign)int jieguo;

@end
@implementation ViewController

- (void)viewDidLoad {
    self.gameresult.text=@"";
    [super viewDidLoad];
    _restart.hidden=YES;
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)restart:(id)sender {
    _restart.hidden=YES;
    _start.hidden=NO;
    self.procom.progress=0;
    self.prohuman.progress=0;
}
- (IBAction)start:(id)sender {
    int com = rand()%3;
    switch (com) {
        case 0:
            self.comresult.text=@"✌️";
            break;
        case 1:
            self.comresult.text=@"✊";
            break;
        case 2:
            self.comresult.text=@"🖐";
            break;
            
        default:
            break;
    }
    if (com==0&&self.player==1) {
        self.gameresult.text=@"player Win!!";
        self.prohuman.progress +=0.2;
    }
    else if (com==0&&self.player==2)
    {
        self.gameresult.text=@"player lose!!";
        self.procom.progress +=0.2;
    }
    else if (com==1&&self.player==0)
    {
        self.gameresult.text=@"player lose!!";
        self.procom.progress +=0.2;
    }
    else if (com==1&&self.player==2)
    {
        self.gameresult.text=@"player win!!";
        self.prohuman.progress +=0.2;
    }
    else if (com==2&&self.player==1)
    {
        self.gameresult.text=@"player lose!!";
        self.procom.progress +=0.2;
    }
    else if (com==2&&self.player==0)
    {
        self.gameresult.text=@"player win!!";
        self.prohuman.progress +=0.2;
    }else{
        self.gameresult.text=@"darw!";
    }
    if (self.procom.progress==1) {
        _start.hidden=YES;
        _restart.hidden=NO;
        self.gameresult.text=@"You Lose!!!";
    }else if(self.prohuman.progress==1)
    {
        _start.hidden=YES;
        _restart.hidden=NO;
        self.gameresult.text=@"You Win!!!";
    }
}

- (IBAction)jd:(UIButton *)sender {
    self.player=0;
    self.comresult.text=@"";
    self.gameresult.text=@"";
}
- (IBAction)st:(UIButton *)sender {
    self.player=1;
    self.comresult.text=@"";
    self.gameresult.text=@"";
}
- (IBAction)bu:(UIButton *)sender {
    self.player=2;
    self.comresult.text=@"";
    self.gameresult.text=@"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
