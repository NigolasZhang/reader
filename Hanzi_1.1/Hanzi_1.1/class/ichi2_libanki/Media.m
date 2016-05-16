#import "Media.h"
#import "XCollection.h"


#import "Note.h"
#import "Card.h"
#import "Decks.h"
#import "Models.h"
#import "Tags.h"
#import "Sched.h"
#import "AnkiDb.h"
#import "Timer.h"


@implementation Media


//
//
//    public Media(Collection col, boolean server) {
- (instancetype)initWithcol:(XCollection *)col server:(BOOL)server
{
//        mCol = col;
//        if (server) {
//            mDir = null;
//            return;
//        }
//        // media directory
//        mDir = col.getPath().replaceFirst("\\.anki2$", ".media");
//        File fd = new File(mDir);
//        if (!fd.exists()) {
//            if (!fd.mkdir()) {
//                Timber.e("Cannot create media directory: " + mDir);
//            }
//        }
//        // change database
//        connect();
    if (self = [super init]) {
        _mCol = col;
        if (server) {
            _mDir = nil;
            return self;
        }
        // media directory
        // MMM获得文件collection.anki2的路径，并把路径中的.anki2替换成.media， 然后把替换后的字符串返回给变量_mDir
        // mDir = col.getPath().replaceFirst("\\.anki2$", ".media");
        // 根据_mDir，判断这个文件存不存在，
        // 1. 判断它是不是存在，如果不存在，就往下之行；
        
        // 2. 如果不存在，就创建一个这样的目录，如果创建不成功，则报错，执行下面的语句；
        
        
        [Timer eWitherr:[NSString stringWithFormat:@"Cannot create media directory:%@", _mDir]];
        // 执行链接数据库的方法；
        [self connect];
        
    }
    

	return self;
}
//
//    // 链接数据库
//    public void connect() {
- (void)connect
{
//        if (mCol.getServer()) {
//            return;
//        }
//        // NOTE: We use a custom prefix for AnkiDroid to avoid issues caused by copying
//        // the db to the desktop or vice versa.
//        String path = dir() + ".ad.db2";
//        File dbFile = new File(path);
//        boolean create = !(dbFile.exists());
//        mDb = AnkiDatabaseManager.getDatabase(path);
//        if (create) {
//            //初始化media数据库；
//            _initDB();
//        }
//        maybeUpgrade();

	
}

//_initDB这个方法找不到，您自己匹配吧！
//
//    // 可以升级吗？
//    public void maybeUpgrade() {
- (void)maybeUpgrade
{
//        // 返回 collection.media.db
//        String oldpath = dir() + ".db";
//        File oldDbFile = new File(oldpath);
//        if (oldDbFile.exists()) {
//            mDb.execute(String.format(Locale.US, "attach \"%s\" as old", oldpath));
//            try {
//                String sql = "insert into media\n" +
//                             " select m.fname, csum, mod, ifnull((select 1 from log l2 where l2.fname=m.fname), 0) as dirty\n" +
//                             " from old.media m\n" +
//                             " left outer join old.log l using (fname)\n" +
//                             " union\n" +
//                             " select fname, null, 0, 1 from old.log where type=1;";
//                mDb.execute(sql);
//                mDb.execute("delete from meta");
//                mDb.execute("insert into meta select dirMod, usn from old.meta");
//                mDb.commit();
//            } catch (Exception e) {
//                // if we couldn't import the old db for some reason, just start anew
//                StringWriter sw = new StringWriter();
//                e.printStackTrace(new PrintWriter(sw));
//                mCol.log("failed to import old media db:" + sw.toString());
//            }
//            mDb.execute("detach old");
//            File newDbFile = new File(oldpath + ".old");
//            if (newDbFile.exists()) {
//                newDbFile.delete();
//            }
//            oldDbFile.renameTo(newDbFile);
//        }

	
}
//
//
//    public void close() {
- (void)close
{
//        if (mCol.getServer()) {
//            return;
//        }
//        AnkiDatabaseManager.closeDatabase(mDb.getPath());
//        mDb = null;

	
}
//
//
//    public String dir() {
- (NSString *)dir
{
//        return mDir;

	return nil;
}
//
//
//    /**
//     * Adding media
//     * ***********************************************************
//     */
//
//    /**
//     * In AnkiDroid, adding a media file will not only copy it to the media directory, but will also insert an entry
//     * into the media database marking it as a new addition.
//     */
//    public String addFile(File ofile) throws IOException {
- (NSString *)addFileWithofile:(NSObject *)ofile
{
//        String fname = writeData(ofile);
//        markFileAdd(fname);
//        return fname;

	return nil;
}
//
//
//    /**
//     * Copy a file to the media directory and return the filename it was stored as.
//     * <p>
//     * Unlike the python version of this method, we don't read the file into memory as a string. All our operations are
//     * done on streams opened on the file, so there is no second parameter for the string object here.
//     */
//    private String writeData(File ofile) throws IOException {
- (NSString *)writeDataWithofile:(NSObject *)ofile
{
//        // get the file name
//        String fname = ofile.getName();
//        // make sure we write it in NFC form and return an NFC-encoded reference
//        fname = HtmlUtil.nfcNormalized(fname);
//        // remove any dangerous characters
//        String base = stripIllegal(fname);
//        String root = Utils.removeExtension(base);
//        String ext = Utils.getFileExtension(base);
//        // find the first available name
//        String csum = Utils.fileChecksum(ofile);
//        while (true) {
//            fname = root + ext;
//            File path = new File(dir(), fname);
//            // if it doesn't exist, copy it directly
//            if (!path.exists()) {
//                Utils.copyFile(ofile, path);
//                return fname;
//            }
//            // if it's identical, reuse
//            if (Utils.fileChecksum(path).equals(csum)) {
//                return fname;
//            }
//            // otherwise, increment the index in the filename
//            Pattern reg = Pattern.compile(" \\((\\d+)\\)$");
//            Matcher m = reg.matcher(root);
//            if (!m.find()) {
//                root = root + " (1)";
//            } else {
//                int n = Integer.parseInt(m.group(1));
//                root = String.format(" (%d)", n + 1);
//            }
//        }

	return nil;
}
//
//
//    /**
//     * String manipulation
//     * ***********************************************************
//     */
//
//    public List<String> filesInStr(Long mid, String string) {
- (NSMutableArray *)filesInStrWithmid:(NSInteger)mid string:(NSString *)string
{
//        return filesInStr(mid, string, false);

	return nil;
}
//
//
//    /**
//     * Extract media filenames from an HTML string.
//     *
//     * @param string The string to scan for media filenames ([sound:...] or <img...>).
//     * @param includeRemote If true will also include external http/https/ftp urls.
//     * @return A list containing all the sound and image filenames found in the input string.
//     */
//    public List<String> filesInStr(Long mid, String string, boolean includeRemote) {
- (NSMutableArray *)filesInStrWithmid:(NSInteger)mid string:(NSString *)string includeRemote:(BOOL)includeRemote
{
//        List<String> l = new ArrayList<String>();
//        JSONObject model = mCol.getModels().get(mid);
//        List<String> strings = new ArrayList<String>();
//        try {
//            if (model.getInt("type") == Consts.MODEL_CLOZE && string.contains("{{c")) {
//                // if the field has clozes in it, we'll need to expand the
//                // possibilities so we can render latex
//                strings = _expandClozes(string);
//            } else {
//                strings.add(string);
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//
//        for (String s : strings) {
//            // handle latex
//            s =  LaTeX.mungeQA(s, mCol);
//            // extract filenames
//            Matcher m;
//            for (Pattern p : mRegexps) {
//                // NOTE: python uses the named group 'fname'. Java doesn't have named groups, so we have to determine
//                // the index based on which pattern we are using
//                int fnameIdx = p == fSoundRegexps ? 2 : p == fImgRegExpU ? 2 : 3;
//                m = p.matcher(s);
//                while (m.find()) {
//                    String fname = m.group(fnameIdx);
//                    boolean isLocal = !fRemotePattern.matcher(fname.toLowerCase(Locale.US)).find();
//                    if (isLocal || includeRemote) {
//                        l.add(fname);
//                    }
//                }
//            }
//        }
//        return l;

	return nil;
}
//
//
//    private List<String> _expandClozes(String string) {
- (NSMutableArray *)_expandClozesWithstring:(NSString *)string
{
//        Set<String> ords = new TreeSet<String>();
//        Matcher m = Pattern.compile("\\{\\{c(\\d+)::.+?\\}\\}").matcher(string);
//        while (m.find()) {
//            ords.add(m.group(1));
//        }
//        ArrayList<String> strings = new ArrayList<String>();
//        String clozeReg = Template.clozeReg;
//        
//        for (String ord : ords) {
//            StringBuffer buf = new StringBuffer();
//            m = Pattern.compile(String.format(Locale.US, clozeReg, ord)).matcher(string);
//            while (m.find()) {
//                if (!TextUtils.isEmpty(m.group(3))) {
//                    m.appendReplacement(buf, "[$3]");
//                } else {
//                    m.appendReplacement(buf, "[...]");
//                }
//            }
//            m.appendTail(buf);
//            String s = buf.toString().replaceAll(String.format(Locale.US, clozeReg, ".+?"), "$1");
//            strings.add(s);
//        }
//        strings.add(string.replaceAll(String.format(Locale.US, clozeReg, ".+?"), "$1"));
//        return strings;

	return nil;
}
//
//
//    /**
//     * Strips a string from media references.
//     *
//     * @param txt The string to be cleared of media references.
//     * @return The media-free string.
//     */
//    public String strip(String txt) {
- (NSString *)stripWithtxt:(NSString *)txt
{
//        for (Pattern p : mRegexps) {
//            txt = p.matcher(txt).replaceAll("");
//        }
//        return txt;

	return nil;
}
//
//
//    public String escapeImages(String string) {
- (NSString *)escapeImagesWithstring:(NSString *)string
{
//        return escapeImages(string, false);

	return nil;
}
//
//
//    /**
//     * Percent-escape UTF-8 characters in local image filenames.
//     * @param string The string to search for image references and escape the filenames.
//     * @return The string with the filenames of any local images percent-escaped as UTF-8.
//     */
//    public String escapeImages(String string, boolean unescape) {
- (NSString *)escapeImagesWithstring:(NSString *)string unescape:(BOOL)unescape
{
//        for (Pattern p : Arrays.asList(fImgRegExpQ, fImgRegExpU)) {
//            Matcher m = p.matcher(string);
//            // NOTE: python uses the named group 'fname'. Java doesn't have named groups, so we have to determine
//            // the index based on which pattern we are using
//            int fnameIdx = p == fImgRegExpU ? 2 : 3;
//            while (m.find()) {
//                String tag = m.group(0);
//                String fname = m.group(fnameIdx);
//                if (fRemotePattern.matcher(fname).find()) {
//                    //dont't do any escaping if remote image
//                } else {
//                    if (unescape) {
//                        string = string.replace(tag,tag.replace(fname, Uri.decode(fname)));
//                    } else {
//                        string = string.replace(tag,tag.replace(fname, Uri.encode(fname)));
//                    }
//                }
//            }
//        }
//        return string;

	return nil;
}
//
//
//    /**
//     * Rebuilding DB
//     * ***********************************************************
//     */
//
//    /**
//     * Finds missing, unused and invalid media files
//     *
//     * @return A list containing three lists of files (missingFiles, unusedFiles, invalidFiles)
//     */
//    public List<List<String>> check() {
- (NSMutableArray *)check
{
//        return check(null);

	return nil;
}
//
//
//    private List<List<String>> check(File[] local) {
- (NSMutableArray *)checkWithlocal:(NSMutableArray *)local
{
//        File mdir = new File(dir());
//        // gather all media references in NFC form
//        Set<String> allRefs = new HashSet<String>();
//        Cursor cur = null;
//        try {
//            cur = mCol.getDb().getDatabase().rawQuery("select id, mid, flds from notes", null);
//            while (cur.moveToNext()) {
//                long nid = cur.getLong(0);
//                long mid = cur.getLong(1);
//                String flds = cur.getString(2);
//                List<String> noteRefs = filesInStr(mid, flds);
//                // check the refs are in NFC
//                for (String f : noteRefs) {
//                    // if they're not, we'll need to fix them first
//                    if (!f.equals(HtmlUtil.nfcNormalized(f))) {
//                        _normalizeNoteRefs(nid);
//                        noteRefs = filesInStr(mid, flds);
//                        break;
//                    }
//                }
//                allRefs.addAll(noteRefs);
//            }
//        } finally {
//            if (cur != null) {
//                cur.close();
//            }
//        }
//        // loop through media folder
//        List<String> unused = new ArrayList<String>();
//        List<String> invalid = new ArrayList<String>();
//        File[] files;
//        if (local == null) {
//            files = mdir.listFiles();
//        } else {
//            files = local;
//        }
//        boolean renamedFiles = false;
//        for (File file : files) {
//            if (local == null) {
//                if (file.isDirectory()) {
//                    // ignore directories
//                    continue;
//                }
//            }
//            if (file.getName().startsWith("_")) {
//                // leading _ says to ignore file
//                continue;
//            }
//            File nfcFile = new File(dir(), HtmlUtil.nfcNormalized(file.getName()));
//            // we enforce NFC fs encoding
//            if (local == null) {
//                if (!file.getName().equals(nfcFile.getName())) {
//                    // delete if we already have the NFC form, otherwise rename
//                    if (nfcFile.exists()) {
//                        file.delete();
//                        renamedFiles = true;
//                    } else {
//                        file.renameTo(nfcFile);
//                        renamedFiles = true;
//                    }
//                    file = nfcFile;
//                }
//            }
//            // compare
//            if (!allRefs.contains(nfcFile.getName())) {
//                unused.add(file.getName());
//            } else {
//                allRefs.remove(nfcFile.getName());
//            }
//        }
//        // if we renamed any files to nfc format, we must rerun the check
//        // to make sure the renamed files are not marked as unused
//        if (renamedFiles) {
//            return check(local);
//        }
//        List<String> nohave = new ArrayList<String>();
//        for (String x : allRefs) {
//            if (!x.startsWith("_")) {
//                nohave.add(x);
//            }
//        }
//        List<List<String>> result = new ArrayList<List<String>>();
//        result.add(nohave);
//        result.add(unused);
//        result.add(invalid);
//        return result;

	return nil;
}
//
//
//    private void _normalizeNoteRefs(long nid) {
- (void)_normalizeNoteRefsWithnid:(NSInteger)nid
{
//        Note note = mCol.getNote(nid);
//        String[] flds = note.getFields();
//        for (int c = 0; c < flds.length; c++) {
//            String fld = flds[c];
//            String nfc = HtmlUtil.nfcNormalized(fld);
//            if (!nfc.equals(fld)) {
//                note.setField(c, nfc);
//            }
//        }
//        note.flush();

	
}
//
//
//    /**
//     * Copying on import
//     * ***********************************************************
//     */
//
//    public boolean have(String fname) {
- (BOOL)haveWithfname:(NSString *)fname
{
//        return new File(dir(), fname).exists();

	return nil;
}
//
//    /**
//     * Illegal characters
//     * ***********************************************************
//     */
//
//    public String stripIllegal(String str) {
- (NSString *)stripIllegalWithstr:(NSString *)str
{
//        Matcher m = fIllegalCharReg.matcher(str);
//        return m.replaceAll("");

	return nil;
}
//
//
//    public boolean hasIllegal(String str) {
- (BOOL)hasIllegalWithstr:(NSString *)str
{
//        Matcher m = fIllegalCharReg.matcher(str);
//        return m.find();

	return nil;
}
//
//
//    /**
//     * Tracking changes
//     * ***********************************************************
//     */
//
//    /**
//     * Scan the media folder if it's changed, and note any changes.
//     */
//    public void findChanges() {
- (void)findChanges
{
//        findChanges(false);

	
}
//
//
//    /**
//     * @param force Unconditionally scan the media folder for changes (i.e., ignore differences in recorded and current
//     *            directory mod times). Use this when rebuilding the media database.
//     */
//    public void findChanges(boolean force) {
- (void)findChangesWithforce:(BOOL)force
{
//        if (force || _changed() != null) {
//            _logChanges();
//        }

	
}
//
//
//    public boolean haveDirty() {
- (BOOL)haveDirty
{
//        return mDb.queryScalar("select 1 from media where dirty=1 limit 1") > 0;

	return nil;
}
//
//
//    /**
//     * Returns the number of seconds from epoch since the last modification to the file in path. Important: this method
//     * does not automatically append the root media directory to the path; the FULL path of the file must be specified.
//     *
//     * @param path The path to the file we are checking. path can be a file or a directory.
//     * @return The number of seconds (rounded down).
//     */
//    private long _mtime(String path) {
- (NSInteger)_mtimeWithpath:(NSString *)path
{
//        File f = new File(path);
//        return f.lastModified() / 1000;

	return nil;
}
//
//
//    private String _checksum(String path) {
- (NSString *)_checksumWithpath:(NSString *)path
{
//        return Utils.fileChecksum(path);

	return nil;
}
//
//
//    /**
//     * Return dir mtime if it has changed since the last findChanges()
//     * Doesn't track edits, but user can add or remove a file to update
//     * 
//     * @return The modification time of the media directory if it has changed since the last call of findChanges(). If
//     *         it hasn't, it returns null.
//     */
//    public Long _changed() {
- (NSInteger)_changed
{
//        long mod = mDb.queryLongScalar("select dirMod from meta");
//        long mtime = _mtime(dir());
//        if (mod != 0 && mod == mtime) {
//            return null;
//        }
//        return mtime;

	return nil;
}
//
//
//    private void _logChanges()  {
- (void)_logChanges
{
//        Pair<List<String>, List<String>> result = _changes();
//        List<String> added = result.first;
//        List<String> removed = result.second;
//        ArrayList<Object[]> media = new ArrayList<Object[]>();
//        for (String f : added) {
//            String path = new File(dir(), f).getAbsolutePath();
//            long mt = _mtime(path);
//            media.add(new Object[] { f, _checksum(path), mt, 1 });
//        }
//        for (String f : removed) {
//            media.add(new Object[] { f, null, 0, 1});
//        }
//        // update media db
//        mDb.executeMany("insert or replace into media values (?,?,?,?)", media);
//        mDb.execute("update meta set dirMod = ?", new Object[] { _mtime(dir()) });
//        mDb.commit();

}
	
//
//
//    private Pair<List<String>, List<String>> _changes() {
- (NSMutableDictionary *)_changes
{
//        Map<String, Object[]> cache = new HashMap<String, Object[]>();
//        Cursor cur = null;
//        try {
//            cur = mDb.getDatabase().rawQuery("select fname, csum, mtime from media where csum is not null", null);
//            while (cur.moveToNext()) {
//                String name = cur.getString(0);
//                String csum = cur.getString(1);
//                Long mod = cur.getLong(2);
//                cache.put(name, new Object[] { csum, mod, false });
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        } finally {
//            if (cur != null) {
//                cur.close();
//            }
//        }
//        List<String> added = new ArrayList<String>();
//        List<String> removed = new ArrayList<String>();
//        // loop through on-disk files
//        for (File f : new File(dir()).listFiles()) {
//            // ignore folders and thumbs.db
//            if (f.isDirectory()) {
//                continue;
//            }
//            String fname = f.getName();
//            if (fname.equalsIgnoreCase("thumbs.db")) {
//                continue;
//            }
//            // and files with invalid chars
//            if (hasIllegal(fname)) {
//                continue;
//            }
//            // empty files are invalid; clean them up and continue
//            long sz = f.length();
//            if (sz == 0) {
//                f.delete();
//                continue;
//            }
//            if (sz > 100*1024*1024) {
//                mCol.log("ignoring file over 100MB", f);
//                continue;
//            }
//            // check encoding
//            String normf = HtmlUtil.nfcNormalized(fname);
//            if (!fname.equals(normf)) {
//                // wrong filename encoding which will cause sync errors
//                File nf = new File(dir(), normf);
//                if (nf.exists()) {
//                    f.delete();
//                } else {
//                    f.renameTo(nf);
//                }
//            }
//            // newly added?
//            if (!cache.containsKey(fname)) {
//                added.add(fname);
//            } else {
//                // modified since last time?
//                if (_mtime(f.getAbsolutePath()) != (Long) cache.get(fname)[1]) {
//                    // and has different checksum?
//                    if (!_checksum(f.getAbsolutePath()).equals(cache.get(fname)[0])) {
//                        added.add(fname);
//                    }
//                }
//                // mark as used
//                cache.get(fname)[2] = true;
//            }
//        }
//        // look for any entries in the cache that no longer exist on disk
//        for (String fname : cache.keySet()) {
//            if (!((Boolean)cache.get(fname)[2])) {
//                removed.add(fname);
//            }
//        }
//        return new Pair<List<String>, List<String>>(added, removed);

	return nil;
}
//
//
//    /**
//     * Syncing related
//     * ***********************************************************
//     */
//
//    public int lastUsn() {
- (NSInteger)lastUsn
{
//        return mDb.queryScalar("select lastUsn from meta");

	return nil;
}
//
//
//    public void setLastUsn(int usn) {
- (void)setLastUsnWithusn:(NSInteger)usn
{
//        mDb.execute("update meta set lastUsn = ?", new Object[] { usn });
//        mDb.commit();

	
}
//
//
//    public Pair<String, Integer> syncInfo(String fname) {
- (NSMutableDictionary *)syncInfoWithfname:(NSString *)fname
{
//        Cursor cur = null;
//        try {
//            cur = mDb.getDatabase().rawQuery("select csum, dirty from media where fname=?", new String[] { fname });
//            if (cur.moveToNext()) {
//                String csum = cur.getString(0);
//                int dirty = cur.getInt(1);
//                return new Pair<String, Integer>(csum, dirty);
//            } else {
//                return new Pair<String, Integer>(null, 0);
//            }
//        } finally {
//            if (cur != null) {
//                cur.close();
//            }
//        }

	return nil;
}
//
//
//    public void markClean(List<String> fnames) {
- (void)markCleanWithfnames:(NSMutableArray *)fnames
{
//        for (String fname : fnames) {
//            mDb.execute("update media set dirty=0 where fname=?", new Object[] { fname });
//        }

	
}
//
//
//    public void syncDelete(String fname) {
- (void)syncDeleteWithfname:(NSString *)fname
{
//        File f = new File(dir(), fname);
//        if (f.exists()) {
//            f.delete();
//        }
//        mDb.execute("delete from media where fname=?", new Object[] { fname });

	
}
//
//
//    public int mediacount() {
- (NSInteger)mediacount
{
//        return mDb.queryScalar("select count() from media where csum is not null");

	return nil;
}
//
//
//    public int dirtyCount() {
- (NSInteger)dirtyCount
{
//        return mDb.queryScalar("select count() from media where dirty=1");

	return nil;
}
//
//
//    public void forceResync() {
- (void)forceResync
{
//        mDb.execute("delete from media");
//        mDb.execute("update meta set lastUsn=0,dirMod=0");
//        mDb.execute("vacuum analyze");
//        mDb.commit();

	
}
//
//
//    /**
//     * Media syncing: zips
//     * ***********************************************************
//     */
//
//    /**
//     * Unlike python, our temp zip file will be on disk instead of in memory. This avoids storing
//     * potentially large files in memory which is not feasible with Android's limited heap space.
//     * <p>
//     * Notes:
//     * <p>
//     * - The maximum size of the changes zip is decided by the constant SYNC_ZIP_SIZE. If a media file exceeds this
//     * limit, only that file (in full) will be zipped to be sent to the server.
//     * <p>
//     * - This method will be repeatedly called from MediaSyncer until there are no more files (marked "dirty" in the DB)
//     * to send.
//     * <p>
//     * - Since AnkiDroid avoids scanning the media folder on every sync, it is possible for a file to be marked as a
//     * new addition but actually have been deleted (e.g., with a file manager). In this case we skip over the file
//     * and mark it as removed in the database. (This behaviour differs from the desktop client).
//     * <p>
//     */
//    public Pair<File, List<String>> mediaChangesZip() {
- (NSMutableDictionary *)mediaChangesZip
{
//        File f = new File(mCol.getPath().replaceFirst("collection\\.anki2$", "tmpSyncToServer.zip"));
//        Cursor cur = null;
//        try {
//            ZipOutputStream z = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(f)));
//            z.setMethod(ZipOutputStream.DEFLATED);
//
//            List<String> fnames = new ArrayList<String>();
//            // meta is a list of (fname, zipname), where zipname of null is a deleted file
//            // NOTE: In python, meta is a list of tuples that then gets serialized into json and added
//            // to the zip as a string. In our version, we use JSON objects from the start to avoid the
//            // serialization step. Instead of a list of tuples, we use JSONArrays of JSONArrays.
//            JSONArray meta = new JSONArray();
//            int sz = 0;
//            byte buffer[] = new byte[2048];
//            cur = mDb.getDatabase().rawQuery(
//                    "select fname, csum from media where dirty=1 limit " + Consts.SYNC_ZIP_COUNT, null);
//
//            for (int c = 0; cur.moveToNext(); c++) {
//                String fname = cur.getString(0);
//                String csum = cur.getString(1);
//                fnames.add(fname);
//                String normname = HtmlUtil.nfcNormalized(fname);
//
//                if (!TextUtils.isEmpty(csum)) {
//                    try {
//                        mCol.log("+media zip " + fname);
//                        File file = new File(dir(), fname);
//                        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file), 2048);
//                        z.putNextEntry(new ZipEntry(Integer.toString(c)));
//                        int count = 0;
//                        while ((count = bis.read(buffer, 0, 2048)) != -1) {
//                            z.write(buffer, 0, count);
//                        }
//                        z.closeEntry();
//                        bis.close();
//                        meta.put(new JSONArray().put(normname).put(Integer.toString(c)));
//                        sz += file.length();
//                    } catch (FileNotFoundException e) {
//                        // A file has been marked as added but no longer exists in the media directory.
//                        // Skip over it and mark it as removed in the db.
//                        removeFile(fname);
//                    }
//                } else {
//                    mCol.log("-media zip " + fname);
//                    meta.put(new JSONArray().put(normname).put(""));
//                }
//                if (sz >= Consts.SYNC_ZIP_SIZE) {
//                    break;
//                }
//            }
//
//            z.putNextEntry(new ZipEntry("_meta"));
//            z.write(Utils.jsonToString(meta).getBytes());
//            z.closeEntry();
//            z.close();
//            // Don't leave lingering temp files if the VM terminates.
//            f.deleteOnExit();
//            return new Pair<File, List<String>>(f, fnames);
//        } catch (IOException e) {
//            Timber.e("Failed to create media changes zip", e);
//            throw new RuntimeException(e);
//        } finally {
//            if (cur != null) {
//                cur.close();
//            }
//        }

	return nil;
}
//
//
//    /**
//     * Extract zip data; return the number of files extracted. Unlike the python version, this method consumes a
//     * ZipFile stored on disk instead of a String buffer. Holding the entire downloaded data in memory is not feasible
//     * since some devices can have very limited heap space.
//     *
//     * This method closes the file before it returns.
//     */
//    public int addFilesFromZip(ZipFile z) throws IOException {
- (NSInteger)addFilesFromZipWithz:(NSObject *)z
{
//        try {
//            List<Object[]> media = new ArrayList<Object[]>();
//            // get meta info first
//            JSONObject meta = new JSONObject(Utils.convertStreamToString(z.getInputStream(z.getEntry("_meta"))));
//            // then loop through all files
//            int cnt = 0;
//            for (ZipEntry i : Collections.list(z.entries())) {
//                if (i.getName().equals("_meta")) {
//                    // ignore previously-retrieved meta
//                    continue;
//                } else {
//                    String name = meta.getString(i.getName());
//                    // normalize name for platform
//                    name = HtmlUtil.nfcNormalized(name);
//                    // save file
//                    String destPath = dir().concat(File.separator).concat(name);
//                    Utils.writeToFile(z.getInputStream(i), destPath);
//                    String csum = Utils.fileChecksum(destPath);
//                    // update db
//                    media.add(new Object[] {name, csum, _mtime(destPath), 0});
//                    cnt += 1;
//                }
//            }
//            if (media.size() > 0) {
//                mDb.executeMany("insert or replace into media values (?,?,?,?)", media);
//            }
//            return cnt;
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        } finally {
//            z.close();
//        }

	return nil;
}
//
//
//    /*
//     * ***********************************************************
//     * The methods below are not in LibAnki.
//     * ***********************************************************
//     */
//
//    /**
//     * Used by unit tests only.
//     */
//    public AnkiDb getDb() {
- (AnkiDb *)getDb
{
//        return mDb;

	return nil;
}
//
//
//    /**
//     * Used by other classes to determine the index of a regular expression group named "fname"
//     * (Anki2Importer needs this). This is needed because we didn't implement the "transformNames"
//     * function and have delegated its job to the caller of this class.
//     */
//    public static int indexOfFname(Pattern p) {
+ (NSInteger)indexOfFnameWithp:(NSObject *)p
{
//        int fnameIdx = p == fSoundRegexps ? 2 : p == fImgRegExpU ? 2 : 3;
//        return fnameIdx;

	return nil;
}
//
//
//    /**
//     * Add an entry into the media database for file named fname, or update it
//     * if it already exists.
//     */
//    public void markFileAdd(String fname) {
- (void)markFileAddWithfname:(NSString *)fname
{
//        Timber.d("Marking media file addition in media db: %s", fname);
//        String path = new File(dir(), fname).getAbsolutePath();
//        mDb.execute("insert or replace into media values (?,?,?,?)",
//                new Object[] { fname, _checksum(path), _mtime(path), 1 });

	
}
//
//
//    /**
//     * Remove a file from the media directory if it exists and mark it as removed in the media database.
//     */
//    public void removeFile(String fname) {
- (void)removeFileWithfname:(NSString *)fname
{
//        File f = new File(dir(), fname);
//        if (f.exists()) {
//            f.delete();
//        }
//        Timber.d("Marking media file removal in media db: %s", fname);
//        mDb.execute("insert or replace into media values (?,?,?,?)",
//                new Object[] { fname, null, 0, 1 });

	
}
//
//
//    /**
//     * @return True if the media db has not been populated yet.
//     */
//    public boolean needScan() {
- (BOOL)needScan
{
//        long mod = mDb.queryLongScalar("select dirMod from meta");
//        if (mod == 0) {
//            return true;
//        } else {
//            return false;
//        }

	return nil;
}


@end