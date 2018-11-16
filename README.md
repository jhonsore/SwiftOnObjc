# SwiftOnObjc
How to implement swift code in objc

Follow this steps and you will success!

1 - Create your xcode project

2 - Create a new .swift file

3 - A dialogue box will appear, make sure to select “Create Bridging Header” when prompted.

4 - On Target -> build settings, search for "Packaging" and turn on "Defines Module"

5 - On your swift file (sample)

import Foundation

@objcMembers

class MyClass: NSObject {
    public func test () -> String {
        return "Swift says hi to objc class!"
    }
}
Here pay attention to @objcMembers that will let objc class recognize swift class!

Find it here

6 - On your objc class .m or .h file import your auto generated Project-Swift.h file on step 3

My goal was to import it:

#import <Teste-Swift.h>
And not:

#import "Teste-Swift.h"
Thats it, after a headache i got tha answer

So at the end, my .m file was like this:

#import "ViewController.h"
#import <Teste-Swift.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //-------------        
    MySwiftClass *myswiftclass = [[MySwiftClass alloc] init];
    NSString *string = [myswiftclass test];
    NSLog(@"%@",string);
}


@end
An my .swift file:

import Foundation

@objcMembers

class MySwiftClass: NSObject {
    public func test () -> String {
        return "Swift says hi second swift class!"
    }
}
I hope this can help you folks.
