# YJYYMuneBarDemo
下面是原demo的用法，我在原demo的基础上增加了左右两侧都可以展开的效果
对应博客地址:http://www.jianshu.com/p/41d27463c3ef

1.导入头文件 

`#import "CMuneBar.h"`

2.创建

`CMuneBar *muneBar = [[CMuneBar alloc] initWithItems:@[@"gallery",@"dropbox",@"camera",@"draw"] size:CGSizeMake(50, 50) type:kMuneBarTypeRadLeft];`


3.设置代理

`muneBar.delegate = self;`

4.添加到视图 

`[self.view addSubview:muneBar];`


在这里我提供了十种样式

`typedef NS_OPTIONS(NSUInteger, MuneBarType){`
`     kMuneBarTypeRadLeft = 0,`<br>
`     kMuneBarTypeRadRight,`<br>
`     kMuneBarTypeLineTop,`<br>
`     kMuneBarTypeLineBottom,`<br>
`     kMuneBarTypeLineLeft,`<br>
`     kMuneBarTypeLineRight,`<br>
`     kMuneBarTypeRoundTop,`<br>
`     kMuneBarTypeRoundBottom,`<br>
`     kMuneBarTypeRoundLeft,`<br>
`    kMuneBarTypeRoundRight,`<br>
`};`

具体演示效果看这：

![](https://github.com/CaoWeikang/CMuneBarDemo/blob/master/%E6%BC%94%E7%A4%BA.gif)<br>

