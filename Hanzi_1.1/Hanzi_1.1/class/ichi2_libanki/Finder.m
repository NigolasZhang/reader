#import "Finder.h"
#import "XCollection.h"


#import "Note.h"
#import "Card.h"
#import "Decks.h"
#import "Models.h"
#import "Media.h"
#import "Tags.h"
#import "Sched.h"
#import "AnkiDb.h"


@implementation Finder


//public class Finder {
//
//    private static final Pattern fPropPattern = Pattern.compile("(^.+?)(<=|>=|!=|=|<|>)(.+?$)");
//    private static final Pattern fNidsPattern = Pattern.compile("[^0-9,]");
//    private static final Pattern fMidPattern = Pattern.compile("[^0-9]");
//
//    private Collection mCol;
//
//
//    public Finder(Collection col) {
- (instancetype)initWithcol:(XCollection *)col
{
//        mCol = col;

	return nil;
}
//
//
//    /*
//     * NOTE: The python version of findCards can accept a boolean, a string, or no value for the _order parameter. The
//     * type of _order also determines which _order() method is used. To maintain type safety, we expose the three valid
//     * options here and safely type-cast accordingly at run-time.
//     */
//
//    /** Return a list of card ids for QUERY */
//    public List<Long> findCards(String query) {
- (NSMutableArray *)findCardsWithquery:(NSString *)query
{
//        return findCards(query, false);

	return nil;
}
//
//
//    public List<Long> findCards(String query, String _order) {
- (NSMutableArray *)findCardsWithquery:(NSString *)query _order:(NSString *)_order
{
//        return _findCards(query, _order);

	return nil;
}
//
//
//    public List<Long> findNotes(String query) {
- (NSMutableArray *)findNotesWithquery:(NSString *)query
{
//        String[] tokens = _tokenize(query);
//        Pair<String, String[]> res1 = _where(tokens);
//        String preds = res1.first;
//        String[] args = res1.second;
//        List<Long> res = new ArrayList<Long>();
//        if (preds == null) {
//            return res;
//        }
//        if (preds.equals("")) {
//            preds = "1";
//        } else {
//            preds = "(" + preds + ")";
//        }
//        String sql = "select distinct(n.id) from cards c, notes n where c.nid=n.id and " + preds;
//        Cursor cur = null;
//        try {
//            cur = mCol.getDb().getDatabase().rawQuery(sql, args);
//            while (cur.moveToNext()) {
//                res.add(cur.getLong(0));
//            }
//        } catch (SQLException e) {
//            // invalid grouping
//            return new ArrayList<Long>();
//        } finally {
//            if (cur != null) {
//                cur.close();
//            }
//        }
//        return res;

	return nil;
}
//
//
//    /**
//     * Tokenizing
//     * ***********************************************************
//     */
//
//    public String[] _tokenize(String query) {
- (NSMutableArray *)_tokenizeWithquery:(NSString *)query
{
//        char inQuote = 0;
//        List<String> tokens = new ArrayList<String>();
//        String token = "";
//        for (int i = 0; i < query.length(); ++i) {
//            // quoted text
//            char c = query.charAt(i);
//            if (c == '\'' || c == '"') {
//                if (inQuote != 0) {
//                    if (c == inQuote) {
//                        inQuote = 0;
//                    } else {
//                        token += c;
//                    }
//                } else if (token.length() != 0) {
//                    // quotes are allowed to start directly after a :
//                    if (token.endsWith(":")) {
//                        inQuote = c;
//                    } else {
//                        token += c;
//                    }
//                } else {
//                    inQuote = c;
//                }
//                // separator
//            } else if (c == ' ') {
//                if (inQuote != 0) {
//                    token += c;
//                } else if (token.length() != 0) {
//                    // space marks token finished
//                    tokens.add(token);
//                    token = "";
//                }
//                // nesting
//            } else if (c == '(' || c == ')') {
//                if (inQuote != 0) {
//                    token += c;
//                } else {
//                    if (c == ')' && token.length() != 0) {
//                        tokens.add(token);
//                        token = "";
//                    }
//                    tokens.add(String.valueOf(c));
//                }
//                // negation
//            } else if (c == '-') {
//                if (token.length() != 0) {
//                    token += c;
//                } else if (tokens.size() == 0 || !tokens.get(tokens.size() - 1).equals("-")) {
//                    tokens.add("-");
//                }
//                // normal character
//            } else {
//                token += c;
//            }
//        }
//        // if we finished in a token, add it
//        if (token.length() != 0) {
//            tokens.add(token);
//        }
//        return tokens.toArray(new String[tokens.size()]);

	return nil;
}
//
//
//    /**
//     * Query building
//     * ***********************************************************
//     */
//
//    /**
//     * LibAnki creates a dictionary and operates on it with an inner function inside _where().
//     * AnkiDroid combines the two in this class instead.
//     */
//    public class SearchState {
//        public boolean isnot;
//        public boolean isor;
//        public boolean join;
//        public String q = "";
//        public boolean bad;
//        
//        public void add(String txt) {
- (void)addWithtxt:(NSString *)txt
{
//            add(txt, true);

//	return nil;
}
//
//        public void add(String txt, boolean wrap) {
- (void)addWithtxt:(NSString *)txt wrap:(BOOL)wrap
{
//            // failed command?
//            if (TextUtils.isEmpty(txt)) {
//                // if it was to be negated then we can just ignore it
//                if (isnot) {
//                    isnot = false;
//                    return;
//                } else {
//                    bad = true;
//                    return;
//                }
//            } else if (txt.equals("skip")) {
//                return;
//            }
//            // do we need a conjunction?
//            if (join) {
//                if (isor) {
//                    q += " or ";
//                    isor = false;
//                } else {
//                    q += " and ";
//                }
//            }
//            if (isnot) {
//                q += " not ";
//                isnot = false;
//            }
//            if (wrap) {
//                txt = "(" + txt + ")";
//            }
//            q += txt;
//            join = true;

//	return nil;
}
//
//
//    public Pair<String, String[]> _where(String[] tokens) {
- (NSMutableDictionary *)_whereWithtokens:(NSMutableArray *)tokens
{
//        // state and query
//        SearchState s = new SearchState();
//        List<String> args = new ArrayList<String>();
//        for (String token : tokens) {
//            if (s.bad) {
//                return new Pair<String, String[]>(null, null);
//            }
//            // special tokens
//            if (token.equals("-")) {
//                s.isnot = true;
//            } else if (token.equalsIgnoreCase("or")) {
//                s.isor = true;
//            } else if (token.equals("(")) {
//                s.add(token, false);
//                s.join = false;
//            } else if (token.equals(")")) {
//                s.q += ")";
//                // commands
//            } else if (token.contains(":")) {
//                String[] spl = token.split(":", 2);
//                String cmd = spl[0].toLowerCase(Locale.US);
//                String val = spl[1];
//                
//                if (cmd.equals("added")) {
//                    s.add(_findAdded(val));
//                } else if (cmd.equals("card")) {
//                    s.add(_findTemplate(val));
//                } else if (cmd.equals("deck")) {
//                    s.add(_findDeck(val));
//                } else if (cmd.equals("mid")) {
//                    s.add(_findMid(val));
//                } else if (cmd.equals("nid")) {
//                    s.add(_findNids(val));
//                } else if (cmd.equals("cid")) {
//                    s.add(_findCids(val));
//                } else if (cmd.equals("note")) {
//                    s.add(_findModel(val));
//                } else if (cmd.equals("prop")) {
//                    s.add(_findProp(val));
//                } else if (cmd.equals("rated")) {
//                    s.add(_findRated(val));
//                } else if (cmd.equals("tag")) {
//                    s.add(_findTag(val, args));
//                } else if (cmd.equals("dupe")) {
//                    s.add(_findDupes(val));
//                } else if (cmd.equals("is")) {
//                    s.add(_findCardState(val));
//                } else {
//                    s.add(_findField(cmd, val));
//                }
//            // normal text search
//            } else {
//                s.add(_findText(token, args));
//            }
//        }
//        if (s.bad) {
//            return new Pair<String, String[]>(null, null);
//        }
//        return new Pair<String, String[]>(s.q, args.toArray(new String[args.size()]));

	return nil;
}
//
//
//    private String _query(String preds, String order) {
- (NSString *)_queryWithpreds:(NSString *)preds order:(NSString *)order
{
//        // can we skip the note table?
//        String sql;
//        if (!preds.contains("n.") && !order.contains("n.")) {
//            sql = "select c.id from cards c where ";
//        } else {
//            sql = "select c.id from cards c, notes n where c.nid=n.id and ";
//        }
//        // combine with preds
//        if (!TextUtils.isEmpty(preds)) {
//            sql += "(" + preds + ")";
//        } else {
//            sql += "1";
//        }
//        // order
//        if (!TextUtils.isEmpty(order)) {
//            sql += " " + order;
//        }
//        return sql;

	return nil;
}
//
//
//    /**
//     * Ordering
//     * ***********************************************************
//     */
//
//    /*
//     * NOTE: In the python code, _order() follows a code path based on:
//     * - Empty order string (no order)
//     * - order = False (no order)
//     * - Non-empty order string (custom order)
//     * - order = True (built-in order)
//     * The python code combines all code paths in one function. In Java, we must overload the method
//     * in order to consume either a String (no order, custom order) or a Boolean (no order, built-in order).
//     */
//    
//    private Pair<String, Boolean> _order(String order) {
- (NSMutableDictionary *)_orderWithorder:(NSString *)order
{
//        if (TextUtils.isEmpty(order)) {
//            return _order(false);
//        } else {
//            // custom order string provided
//            return new Pair<String, Boolean>(" order by " + order, false);
//        }

	return nil;
}
//
//
//    /**
//     * Commands
//     * ***********************************************************
//     */
//
//    private String _findTag(String val, List<String> args) {
- (NSString *)_findTagWithval:(NSString *)val args:(NSMutableArray *)args
{
//        if (val.equals("none")) {
//            return "n.tags = \"\"";
//        }
//        val = val.replace("*", "%");
//        if (!val.startsWith("%")) {
//            val = "% " + val;
//        }
//        if (!val.endsWith("%")) {
//            val += " %";
//        }
//        args.add(val);
//        return "n.tags like ?";

	return nil;
}
//
//
//    private String _findCardState(String val) {
- (NSString *)_findCardStateWithval:(NSString *)val
{
//        int n;
//        if (val.equals("review") || val.equals("new") || val.equals("learn")) {
//            if (val.equals("review")) {
//                n = 2;
//            } else if (val.equals("new")) {
//                n = 0;
//            } else {
//                return "queue IN (1, 3)";
//            }
//            return "type = " + n;
//        } else if (val.equals("suspended")) {
//            return "c.queue = -1";
//        } else if (val.equals("buried")) {
//            return "c.queue = -2";
//        } else if (val.equals("due")) {
//            return "(c.queue in (2,3) and c.due <= " + mCol.getSched().getToday() +
//                    ") or (c.queue = 1 and c.due <= " + mCol.getSched().getDayCutoff() + ")";
//        } else {
//            return null;
//        }

	return nil;
}
//
//
//    private String _findRated(String val) {
- (NSString *)_findRatedWithval:(NSString *)val
{
//        // days(:optional_ease)
//        String[] r = val.split(":");
//        int days;
//        try {
//            days = Integer.parseInt(r[0]);
//        } catch (NumberFormatException e) {
//            return null;
//        }
//        days = Math.min(days, 31);
//        // ease
//        String ease = "";
//        if (r.length > 1) {
//            if (!Arrays.asList("1", "2", "3", "4").contains(r[1])) {
//                return null;
//            }
//            ease = "and ease=" + r[1];
//        }
//        long cutoff = (mCol.getSched().getDayCutoff() - 86400 * days) * 1000;
//        return "c.id in (select cid from revlog where id>" + cutoff + " " + ease + ")";

	return nil;
}
//
//
//    private String _findAdded(String val) {
- (NSString *)_findAddedWithval:(NSString *)val
{
//        int days;
//        try {
//            days = Integer.parseInt(val);
//        } catch (NumberFormatException e) {
//            return null;
//        }
//        long cutoff = (mCol.getSched().getDayCutoff() - 86400 * days) * 1000;
//        return "c.id > " + cutoff;

	return nil;
}
//
//
//    private String _findProp(String _val) {
- (NSString *)_findPropWith_val:(NSString *)_val
{
//        // extract
//        Matcher m = fPropPattern.matcher(_val);
//        if (!m.matches()) {
//            return null;
//        }
//        String prop = m.group(1).toLowerCase(Locale.US);
//        String cmp = m.group(2);
//        String sval = m.group(3);
//        int val;
//        // is val valid?
//        try {
//            if (prop.equals("ease")) {
//                // LibAnki does this below, but we do it here to avoid keeping a separate float value.
//                val = (int)(Double.parseDouble(sval) * 1000);
//            } else {
//                val = Integer.parseInt(sval);
//            }
//        } catch (NumberFormatException e) {
//            return null;
//        }
//        // is prop valid?
//        if (!Arrays.asList("due", "ivl", "reps", "lapses", "ease").contains(prop)) {
//            return null;
//        }
//        // query
//        String q = "";
//        if (prop.equals("due")) {
//            val += mCol.getSched().getToday();
//            // only valid for review/daily learning
//            q = "(c.queue in (2,3)) and ";
//        } else if (prop.equals("ease")) {
//            prop = "factor";
//            // already done: val = int(val*1000)
//        }
//        q += "(" + prop + " " + cmp + " " + val + ")";
//        return q;

	return nil;
}
//
//
//    private String _findText(String val, List<String> args) {
- (NSString *)_findTextWithval:(NSString *)val args:(NSMutableArray *)args
{
//        val = val.replace("*", "%");
//        args.add("%" + val + "%");
//        args.add("%" + val + "%");
//        return "(n.sfld like ? escape '\\' or n.flds like ? escape '\\')";

	return nil;
}
//
//
//    private String _findNids(String val) {
- (NSString *)_findNidsWithval:(NSString *)val
{
//        if (fNidsPattern.matcher(val).find()) {
//            return null;
//        }
//        return "n.id in (" + val + ")";

	return nil;
}
//
//
//    private String _findCids(String val) {
- (NSString *)_findCidsWithval:(NSString *)val
{
//        if (fNidsPattern.matcher(val).find()) {
//            return null;
//        }
//        return "c.id in (" + val + ")";

	return nil;
}
//
//
//    private String _findMid(String val) {
- (NSString *)_findMidWithval:(NSString *)val
{
//        if (fMidPattern.matcher(val).find()) {
//            return null;
//        }
//        return "n.mid = " + val;

	return nil;
}
//
//
//    private String _findModel(String val) {
- (NSString *)_findModelWithval:(NSString *)val
{
//        LinkedList<Long> ids = new LinkedList<Long>();
//        try {
//            for (JSONObject m : mCol.getModels().all()) {
//                if (m.getString("name").equalsIgnoreCase(val)) {
//                    ids.add(m.getLong("id"));
//                }
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        return "n.mid in " + Utils.ids2str(ids);

	return nil;
}
//
//
//    private List<Long> dids(Long did) {
- (NSMutableArray *)didsWithdid:(NSInteger)did
{
//        if (did == null) {
//            return null;
//        }
//        TreeMap<String, Long> children = mCol.getDecks().children(did);
//        List<Long> res = new ArrayList<Long>();
//        res.add(did);
//        res.addAll(children.values());
//        return res;

	return nil;
}
//
//
//    public String _findDeck(String val) {
- (NSString *)_findDeckWithval:(NSString *)val
{
//        // if searching for all decks, skip
//        if (val.equals("*")) {
//            return "skip";
//            // deck types
//        } else if (val.equals("filtered")) {
//            return "c.odid";
//        }
//        List<Long> ids = null;
//        // current deck?
//        try {
//            if (val.equalsIgnoreCase("current")) {
//                ids = dids(mCol.getDecks().current().getLong("id"));
//            } else if (!val.contains("*")) {
//                // single deck
//                ids = dids(mCol.getDecks().id(val, false));
//            } else {
//                // wildcard
//                ids = new ArrayList<Long>();
//                val = val.replace("*", ".*");
//                val = val.replace("+", "\\+");
//                for (JSONObject d : mCol.getDecks().all()) {
//                    if (d.getString("name").matches("(?i)" + val)) {
//                        for (long id : dids(d.getLong("id"))) {
//                            if (!ids.contains(id)) {
//                                ids.add(id);
//                            }
//                        }
//                    }
//                }
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        if (ids == null || ids.size() == 0) {
//            return null;
//        }
//        String sids = Utils.ids2str(ids);
//        return "c.did in " + sids + " or c.odid in " + sids;

	return nil;
}
//
//
//    private String _findTemplate(String val) {
- (NSString *)_findTemplateWithval:(NSString *)val
{
//        // were we given an ordinal number?
//        Integer num = null;
//        try {
//            num = Integer.parseInt(val) - 1;
//        } catch (NumberFormatException e) {
//            num = null;
//        }
//        if (num != null) {
//            return "c.ord = " + num;
//        }
//        // search for template names
//        List<String> lims = new ArrayList<String>();
//        try {
//            for (JSONObject m : mCol.getModels().all()) {
//                JSONArray tmpls = m.getJSONArray("tmpls");
//                for (int ti = 0; ti < tmpls.length(); ++ti) {
//                    JSONObject t = tmpls.getJSONObject(ti);
//                    if (t.getString("name").equalsIgnoreCase(val)) {
//                        if (m.getInt("type") == Consts.MODEL_CLOZE) {
//                            // if the user has asked for a cloze card, we want
//                            // to give all ordinals, so we just limit to the
//                            // model instead
//                            lims.add("(n.mid = " + m.getLong("id") + ")");
//                        } else {
//                            lims.add("(n.mid = " + m.getLong("id") + " and c.ord = " +
//                                    t.getInt("ord") + ")");
//                        }
//                    }
//                }
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        return TextUtils.join(" or ", lims.toArray(new String[lims.size()]));

	return nil;
}
//
//
//    private String _findField(String field, String val) {
- (NSString *)_findFieldWithfield:(NSString *)field val:(NSString *)val
{
//        /*
//         * We need two expressions to query the cards: One that will use JAVA REGEX syntax and another
//         * that should use SQLITE LIKE clause syntax.
//         */
//        String sqlVal = val
//                .replace("%","\\%") // For SQLITE, we escape all % signs
//                .replace("*","%"); // And then convert the * into non-escaped % signs
//
//        /*
//         * The following three lines make sure that only _ and * are valid wildcards.
//         * Any other characters are enclosed inside the \Q \E markers, which force
//         * all meta-characters in between them to lose their special meaning
//         */
//        String javaVal = val
//                    .replace("_","\\E.\\Q")
//                    .replace("*","\\E.*\\Q");
//        /*
//         * For the pattern, we use the javaVal expression that uses JAVA REGEX syntax
//         */
//        Pattern pattern = Pattern.compile("\\Q" + javaVal + "\\E", Pattern.CASE_INSENSITIVE | Pattern.DOTALL);
//
//        // find models that have that field
//        Map<Long, Object[]> mods = new HashMap<Long, Object[]>();
//        try {
//            for (JSONObject m : mCol.getModels().all()) {
//                JSONArray flds = m.getJSONArray("flds");
//                for (int fi = 0; fi < flds.length(); ++fi) {
//                    JSONObject f = flds.getJSONObject(fi);
//                    if (f.getString("name").equalsIgnoreCase(field)) {
//                        mods.put(m.getLong("id"), new Object[] { m, f.getInt("ord") });
//                    }
//                }
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        if (mods.isEmpty()) {
//            // nothing has that field
//            return null;
//        }
//        LinkedList<Long> nids = new LinkedList<Long>();
//        Cursor cur = null;
//        try {
//            /*
//             * Here we use the sqlVal expression, that is required for LIKE syntax in sqllite.
//             * There is no problem with special characters, because only % and _ are special
//             * characters in this syntax.
//             */
//            cur = mCol.getDb().getDatabase().rawQuery(
//                    "select id, mid, flds from notes where mid in " +
//                            Utils.ids2str(new LinkedList<Long>(mods.keySet())) +
//                            " and flds like ? escape '\\'", new String[] { "%" + sqlVal + "%" });
//
//            while (cur.moveToNext()) {
//                String[] flds = Utils.splitFields(cur.getString(2));
//                int ord = (Integer)mods.get(cur.getLong(1))[1];
//                String strg = flds[ord];
//                if (pattern.matcher(strg).matches()) {
//                    nids.add(cur.getLong(0));
//                }
//            }
//        } finally {
//            if (cur != null) {
//                cur.close();
//            }
//        }
//        if (nids.isEmpty()) {
//            return "0";
//        }
//        return "n.id in " + Utils.ids2str(nids);

	return nil;
}
//
//
//    private String _findDupes(String val) {
- (NSString *)_findDupesWithval:(NSString *)val
{
//        // caller must call stripHTMLMedia on passed val
//        String[] split = val.split(",", 1);
//        if (split.length != 2) {
//            return null;
//        }
//        String mid = split[0];
//        val = split[1];
//        String csum = Long.toString(Utils.fieldChecksum(val));
//        List<Long> nids = new ArrayList<Long>();
//        Cursor cur = null;
//        try {
//            cur = mCol.getDb().getDatabase().rawQuery(
//                    "select id, flds from notes where mid=? and csum=?",
//                    new String[] { mid, csum });
//            long nid = cur.getLong(0);
//            String flds = cur.getString(1);
//            if (Utils.stripHTMLMedia(Utils.splitFields(flds)[0]) == val) {
//                nids.add(nid);
//            }
//        } finally {
//            if (cur != null) {
//                cur.close();
//            }
//        }
//        return "n.id in " +  Utils.ids2str(nids);

	return nil;
}
//
//
//    /**
//     * Find and replace
//     * ***********************************************************
//     */
//
//    /**
//     * Find and replace fields in a note
//     *
//     * @param col The collection to search into.
//     * @param nids The cards to be searched for.
//     * @param src The original text to find.
//     * @param dst The text to change to.
//     * @param regex If true, the src is treated as a regex. Default = false.
//     * @param field Limit the search to specific field. If null, it searches all fields.
//     * @param fold If true the search is case-insensitive. Default = true.
//     * @return
//     */
//    public static int findReplace(Collection col, List<Long> nids, String src, String dst) {
+ (NSInteger)findReplaceWithcol:(XCollection *)col nids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst
{
//        return findReplace(col, nids, src, dst, false, null, true);

	return nil;
}
//
//
//    public static int findReplace(Collection col, List<Long> nids, String src, String dst, boolean regex) {
+ (NSInteger)findReplaceWithcol:(XCollection *)col nids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst regex:(BOOL)regex
{
//        return findReplace(col, nids, src, dst, regex, null, true);

	return nil;
}
//
//
//    public static int findReplace(Collection col, List<Long> nids, String src, String dst, String field) {
+ (NSInteger)findReplaceWithcol:(XCollection *)col nids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst field:(NSString *)field
{
//        return findReplace(col, nids, src, dst, false, field, true);

	return nil;
}

//findReplace-col-nids-src-dst-isRegex这个方法找不到，您自己匹配吧！
//
//
//    public List<String> fieldNames(Collection col) {
- (NSMutableArray *)fieldNamesWithcol:(XCollection *)col
{
//        return fieldNames(col, true);

	return nil;
}
//
//    public List<String> fieldNames(Collection col, boolean downcase) {
- (NSMutableArray *)fieldNamesWithcol:(XCollection *)col downcase:(BOOL)downcase
{
//        Set<String> fields = new HashSet<String>();
//        List<String> names = new ArrayList<String>();
//        try {
//            for (JSONObject m : col.getModels().all()) {
//                JSONArray flds = m.getJSONArray("flds");
//                for (int fi = 0; fi < flds.length(); ++fi) {
//                    JSONObject f = flds.getJSONObject(fi);
//                    if (!fields.contains(f.getString("name").toLowerCase(Locale.US))) {
//                        names.add(f.getString("name"));
//                        fields.add(f.getString("name").toLowerCase(Locale.US));
//                    }
//                }
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        if (downcase) {
//            return new ArrayList<String>(fields);
//        }
//        return names;

	return nil;
}
//
//
//    /**
//     * Find duplicates
//     * ***********************************************************
//     */
//
//    public static Integer ordForMid(Collection col, Map<Long, Integer> fields, long mid, String fieldName) {
+ (NSInteger)ordForMidWithcol:(XCollection *)col fields:(NSMutableDictionary *)fields mid:(NSInteger)mid fieldName:(NSString *)fieldName
{
//        if (!fields.containsKey(mid)) {
//            JSONObject model = col.getModels().get(mid);
//            try {
//                JSONArray flds = model.getJSONArray("flds");
//                for (int c = 0; c < flds.length(); c++) {
//                    JSONObject f = flds.getJSONObject(c);
//                    if (f.getString("name").equalsIgnoreCase(fieldName)) {
//                        fields.put(mid, c);
//                        break;
//                    }
//                }
//            } catch (JSONException e) {
//                throw new RuntimeException(e);
//            }
//        }
//        return fields.get(mid);

	return nil;
}
//
//
//    public static List<Pair<String, List<Long>>> findDupes(Collection col, String fieldName) {
+ (NSMutableArray *)findDupesWithcol:(XCollection *)col fieldName:(NSString *)fieldName
{
//        return findDupes(col, fieldName, "");

	return nil;
}
//
//
//    /**
//     * @return List of Pair("dupestr", List[nids])
//     */
//    public static List<Pair<String, List<Long>>> findDupes(Collection col, String fieldName, String search) {
+ (NSMutableArray *)findDupesWithcol:(XCollection *)col fieldName:(NSString *)fieldName search:(NSString *)search
{
//        // limit search to notes with applicable field name
//    	if (!TextUtils.isEmpty(search)) {
//            search = "(" + search + ") ";
//    	}
//        search += "'" + fieldName + ":*'";
//        // go through notes
//        Map<String, List<Long>> vals = new HashMap<String, List<Long>>();
//        List<Pair<String, List<Long>>> dupes = new ArrayList<Pair<String, List<Long>>>();
//        Map<Long, Integer> fields = new HashMap<Long, Integer>();
//        Cursor cur = null;
//        try {
//            cur = col.getDb().getDatabase().rawQuery(
//                    "select id, mid, flds from notes where id in " + Utils.ids2str(col.findNotes(search)), null);
//            while (cur.moveToNext()) {
//                long nid = cur.getLong(0);
//                long mid = cur.getLong(1);
//                String[] flds = Utils.splitFields(cur.getString(2));
//                Integer ord = ordForMid(col, fields, mid, fieldName);
//                if (ord == null) {
//                    continue;
//                }
//                String val = flds[fields.get(mid)];
//                val = Utils.stripHTMLMedia(val);
//                // empty does not count as duplicate
//                if (TextUtils.isEmpty(val)) {
//                    continue;
//                }
//                if (!vals.containsKey(val)) {
//                    vals.put(val, new ArrayList<Long>());
//                }
//                vals.get(val).add(nid);
//                if (vals.get(val).size() == 2) {
//                    dupes.add(new Pair<String, List<Long>>(val, vals.get(val)));
//                }
//            }
//        } finally {
//            if (cur != null) {
//                cur.close();
//            }
//        }
//        return dupes;

	return nil;
}

//findCardsForCardBrowser-query-_order这个方法找不到，您自己匹配吧！

//_findCardsForCardBrowser-query-_order这个方法找不到，您自己匹配吧！
//    
//    /**
//     * A copy of _query() with a custom SQL query specific to the AnkiDroid card browser.
//     */
//    private String _queryForCardBrowser(String preds, String order) {
- (NSString *)_queryForCardBrowserWithpreds:(NSString *)preds order:(NSString *)order
{
//        String sql = "select c.id, n.sfld, c.did, c.queue, n.tags from cards c, notes n where c.nid=n.id and ";
//        // combine with preds
//        if (!TextUtils.isEmpty(preds)) {
//            sql += "(" + preds + ")";
//        } else {
//            sql += "1";
//        }
//        // order
//        if (!TextUtils.isEmpty(order)) {
//            sql += " " + order;
//        }
//        return sql;

	return nil;
}


@end