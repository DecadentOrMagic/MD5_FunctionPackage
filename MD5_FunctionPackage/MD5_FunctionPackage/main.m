//
//  main.m
//  MD5_FunctionPackage
//
//  Created by 薛尧 on 15/6/15.
//  Copyright © 2015年 薛尧. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCrypto.h>

void XY_MD5(const void *data, CC_LONG len, unsigned char *md);
void XY_MD5(const void *data, CC_LONG len, unsigned char *md)
{
    CC_MD5_CTX md5;
    CC_MD5_Init(&md5);
    CC_MD5_Update(&md5, data, len);
    CC_MD5_Final(md, &md5);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    
        char *string = "I love my mother!";
        
        unsigned char result[16];
        
        XY_MD5(string, (CC_LONG)strlen(string), result);
        //  此处封装的函数XY_MD5,与CC_MD5函数的效果是完全相同的
//        CC_MD5(<#const void *data#>, <#CC_LONG len#>, <#unsigned char *md#>);
        
        
        
        for (int i = 0; i < 16; i++) {
            printf("%02X",result[i]);
        }
        
        printf("\n");
    
    
    
    
    }
    return 0;
}
