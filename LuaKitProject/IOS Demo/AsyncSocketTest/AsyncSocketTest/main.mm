//
//  main.m
//  AsyncSocketTest
//
//  Created by williamwen on 2018/6/5.
//  Copyright © 2018年 williamwen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "oc_helpers.h"
int main(int argc, char * argv[]) {
    startLuakit(argc, argv);
    lua_State * state = getCurrentThreadLuaState();
    luaL_dostring(state, "require('async_socket_test').test()");
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
