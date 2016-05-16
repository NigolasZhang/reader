#import "LaTeX.h"
#import "XCollection.h"


#import "Note.h"
#import "Card.h"
#import "Decks.h"
#import "Models.h"
#import "Media.h"
#import "Tags.h"
#import "Sched.h"
#import "AnkiDb.h"


@implementation LaTeX


//public class LaTeX {
//
//    // 客栈是不考虑；
//    /**
//     * Patterns used to identify LaTeX tags
//     */
//    public static Pattern sStandardPattern = Pattern.compile("\\[latex\\](.+?)\\[/latex\\]",
//            Pattern.DOTALL | Pattern.CASE_INSENSITIVE);
//    public static Pattern sExpressionPattern = Pattern.compile("\\[\\$\\](.+?)\\[/\\$\\]",
//            Pattern.DOTALL | Pattern.CASE_INSENSITIVE);
//    public static Pattern sMathPattern = Pattern.compile("\\[\\$\\$\\](.+?)\\[/\\$\\$\\]",
//            Pattern.DOTALL | Pattern.CASE_INSENSITIVE);
//
//
//    /**
//     * Convert HTML with embedded latex tags to image links.
//     * NOTE: Unlike the original python version of this method, only two parameters are required
//     * in AnkiDroid. The omitted parameters are used to generate LaTeX images. AnkiDroid does not
//     * support the generation of LaTeX media and the provided parameters are sufficient for all
//     * other cases.
//     */
//    public static String mungeQA(String html, Collection col) {
+ (NSString *)mungeQAWithhtml:(NSString *)html col:(XCollection *)col
{
//        StringBuffer sb = new StringBuffer();
//        Matcher matcher = sStandardPattern.matcher(html);
//        while (matcher.find()) {
//            matcher.appendReplacement(sb, _imgLink(col, matcher.group(1)));
//        }
//        matcher.appendTail(sb);
//
//        matcher = sExpressionPattern.matcher(sb.toString());
//        sb = new StringBuffer();
//        while (matcher.find()) {
//            matcher.appendReplacement(sb, _imgLink(col, "$" + matcher.group(1) + "$"));
//        }
//        matcher.appendTail(sb);
//
//        matcher = sMathPattern.matcher(sb.toString());
//        sb = new StringBuffer();
//        while (matcher.find()) {
//            matcher.appendReplacement(sb,
//                    _imgLink(col, "\\begin{displaymath}" + matcher.group(1) + "\\end{displaymath}"));
//        }
//        matcher.appendTail(sb);
//
//        return sb.toString();

	return nil;
}
//
//
//    /**
//     * Return an img link for LATEX.
//     */
//    private static String _imgLink(Collection col, String latex) {
+ (NSString *)_imgLinkWithcol:(XCollection *)col latex:(NSString *)latex
{
//        String txt = _latexFromHtml(col, latex);
//        String fname = "latex-" + Utils.checksum(txt) + ".png";
//        return "<img class=latex src=\"" + fname + "\">";

	return nil;
}
//
//
//    /**
//     * Convert entities and fix newlines.
//     */
//    private static String _latexFromHtml(Collection col, String latex) {
+ (NSString *)_latexFromHtmlWithcol:(XCollection *)col latex:(NSString *)latex
{
//        latex = latex.replaceAll("<br( /)?>|<div>", "\n");
//        latex = Utils.stripHTML(latex);
//        return latex;

	return nil;
}
//
//    public class LaTeXFilter extends Hook {
//        @Override
//        public Object runFilter(Object arg, Object... args) {
- (NSObject *)runFilterWitharg:(NSObject *)arg args:(NSObject *)args
{
//            return LaTeX.mungeQA((String) arg, (Collection) args[4]);

	return nil;
}
//
//
//    public void installHook(Hooks h) {
- (void)installHookWithh:(NSObject *)h
{
//        h.addHook("mungeQA", new LaTeXFilter());

//	return nil;
}


@end