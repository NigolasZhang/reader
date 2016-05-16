//
//  LaTeX.h
//  volNotes01
//
//  Created by God on 16/5/7.
//  Copyright © 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;

@interface LaTeX : NSObject


//    public static String mungeQA(String html, Collection col) {
/**方法注释*/
+ (NSString *)mungeQAWithhtml:(NSString *)html col:(XCollection *)col;

//    private static String _imgLink(Collection col, String latex) {
/**方法注释*/
+ (NSString *)_imgLinkWithcol:(XCollection *)col latex:(NSString *)latex;

//    private static String _latexFromHtml(Collection col, String latex) {
/**方法注释*/
+ (NSString *)_latexFromHtmlWithcol:(XCollection *)col latex:(NSString *)latex;

//    public class LaTeXFilter extends Hook {
//这是内部类或接口的声明开始

//        public Object runFilter(Object arg, Object... args) {
/**方法注释*/
- (NSObject *)runFilterWitharg:(NSObject *)arg args:(NSObject *)args;

//    public void installHook(Hooks h) {
/**方法注释*/
- (void)installHookWithh:(NSObject *)h;



@end
