//
//  Card.m
//  hanzi_v0.1
//
//  Created by God on 16/5/15.
//  Copyright © 2016年 God. All rights reserved.
//

#import "Card.h"
#import "XCollection.h"

@implementation Card


//
//    public Card(Collection col) {
- (instancetype)initWithcol:(XCollection *)col
{
    //        this(col, null);
    
    return nil;
}
//
//
//    public Card(Collection col, Long id) {
- (instancetype)initWithcol:(XCollection *)col xid:(NSInteger)xid
{
    //        mCol = col;
    //        // NaN = 0.0 / 0.0;
    //        mTimerStarted = Double.NaN;
    //        mQA = null;
    //        mNote = null;
    //        if (id != null) {
    //            mId = id;
    //            load();
    //        } else {
    //            // to flush, set nid, ord, and due
    //            // Utils.timestampID(mCol.getDb(), "cards");从cards表中返回一个安全的id，不会重复；
    //            mId = Utils.timestampID(mCol.getDb(), "cards");
    //            mDid = 1;
    //            mType = 0;
    //            mQueue = 0;
    //            mIvl = 0;
    //            mFactor = 0;
    //            mReps = 0;
    //            mLapses = 0;
    //            mLeft = 0;
    //            mODue = 0;
    //            mODid = 0;
    //            mFlags = 0;
    //            mData = "";
    //        }
    
    return nil;
}
//
//
//    public void load() {
- (void)load
{
    //        Cursor cursor = null;
    //        try {
    //            cursor = mCol.getDb().getDatabase().rawQuery("SELECT * FROM cards WHERE id = " + mId, null);
    //            if (!cursor.moveToFirst()) {
    //                throw new RuntimeException(" No card with id " + mId);
    //            }
    //            mId = cursor.getLong(0);
    //            mNid = cursor.getLong(1);
    //            mDid = cursor.getLong(2);
    //            mOrd = cursor.getInt(3);
    //            mMod = cursor.getLong(4);
    //            mUsn = cursor.getInt(5);
    //            mType = cursor.getInt(6);
    //            mQueue = cursor.getInt(7);
    //            mDue = cursor.getInt(8);
    //            mIvl = cursor.getInt(9);
    //            mFactor = cursor.getInt(10);
    //            mReps = cursor.getInt(11);
    //            mLapses = cursor.getInt(12);
    //            mLeft = cursor.getInt(13);
    //            mODue = cursor.getLong(14);
    //            mODid = cursor.getLong(15);
    //            mFlags = cursor.getInt(16);
    //            mData = cursor.getString(17);
    //        } finally {
    //            if (cursor != null) {
    //                cursor.close();
    //            }
    //        }
    //        mQA = null;
    //        mNote = null;
    
    //	return nil;
}
//
//
//    // 更新当前的卡片写入数据库；
//    public void flush() {
- (void)flush
{
    //        flush(true);
    
    //	return nil;
}
//
//    // 更新写入数据库；
//    public void flush(boolean changeModUsn) {
- (void)flushWithchangeModUsn:(BOOL)changeModUsn
{
    //        if (changeModUsn) {
    //            mMod = Utils.intNow();
    //            mUsn = mCol.usn();
    //        }
    //        // bug check
    //        if ((mQueue == 2 && mODue != 0) && !mCol.getDecks().isDyn(mDid)) {
    //            // TODO: runHook("odueInvalid");
    //        }
    //        assert (mDue < Long.valueOf("4294967296"));
    //        mCol.getDb().execute(
    //                "insert or replace into cards values " +
    //                "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
    //                new Object[]{
    //                mId,
    //                mNid,
    //                mDid,
    //                mOrd,
    //                mMod,
    //                mUsn,
    //                mType,
    //                mQueue,
    //                mDue,
    //                mIvl,
    //                mFactor,
    //                mReps,
    //                mLapses,
    //                mLeft,
    //                mODue,
    //                mODid,
    //                mFlags,
    //                mData
    //        });
    //        mCol.log(this);
    
    //	return nil;
}
//
//
//    public void flushSched() {
- (void)flushSched
{
    //        mMod = Utils.intNow();
    //        mUsn = mCol.usn();
    //        // bug check
    //        if ((mQueue == 2 && mODue != 0) && !mCol.getDecks().isDyn(mDid)) {
    //            // TODO: runHook("odueInvalid");
    //        }
    //        assert (mDue < Long.valueOf("4294967296"));
    //
    //        ContentValues values = new ContentValues();
    //        values.put("mod", mMod);
    //        values.put("usn", mUsn);
    //        values.put("type", mType);
    //        values.put("queue", mQueue);
    //        values.put("due", mDue);
    //        values.put("ivl", mIvl);
    //        values.put("factor", mFactor);
    //        values.put("reps", mReps);
    //        values.put("lapses", mLapses);
    //        values.put("left", mLeft);
    //        values.put("odue", mODue);
    //        values.put("odid", mODid);
    //        values.put("did", mDid);
    //        // TODO: The update DB call sets mod=true. Verify if this is intended.
    //        mCol.getDb().update("cards", values, "id = " + mId, null);
    //        mCol.log(this);
    
    //	return nil;
}
//
//    // 获得问题question的内容；
//    public String q() {
- (NSString *)q
{
    //        return q(false);
    
    return nil;
}
//
//
//    public String q(boolean reload) {
- (NSString *)qWithreload:(BOOL)reload
{
    //        return q(reload, false);
    
    return nil;
}
//
//
//    public String q(boolean reload, boolean browser) {
- (NSString *)qWithreload:(BOOL)reload browser:(BOOL)browser
{
    //        return css() + _getQA(reload, browser).get("q");
    
    return nil;
}
//
//    //获得答案anwser内容；
//    public String a() {
- (NSString *)a
{
    //        return css() + _getQA().get("a");
    
    return nil;
}
//
//    //获取model笔记类型中css样式字段的内容；
//    public String css() {
- (NSString *)css
{
    //        try {
    //            return String.format(Locale.US, "<style>%s</style>", model().get("css"));
    //        } catch (JSONException e) {
    //            throw new RuntimeException(e);
    //        }
    
    return nil;
}
//
//
//    public Note note() {
- (Note *)note
{
    //        return note(false);
    
    return nil;
}
//
//    // 获得note对象；
//    public Note note(boolean reload) {
- (Note *)noteWithreload:(BOOL)reload
{
    //        if (mNote == null || reload) {
    //            mNote = mCol.getNote(mNid);
    //        }
    //        return mNote;
    //
    //    if (self.mNote == nil || reload) {
    //
    //        self.mNote = [XCollection getNoteWithxid:self.mNid];
    //    }
    //    return self.mNote;
    
    return nil;
}
//
//    // 获取当前卡片用到的笔记类型
//    public JSONObject model() {
- (NSMutableDictionary *)model
{
    //        return mCol.getModels().get(note().getMid());
    
    return nil;
}
//
//    // 获取当前卡片用到的卡片模板
//    public JSONObject template() {
- (NSMutableDictionary *)template
{
    //        JSONObject m = model();
    //        try {
    //            if (m.getInt("type") == Consts.MODEL_STD) {
    //                return m.getJSONArray("tmpls").getJSONObject(mOrd);
    //            } else {
    //                return model().getJSONArray("tmpls").getJSONObject(0);
    //            }
    //        } catch (JSONException e) {
    //            throw new RuntimeException(e);
    //        }
    
    return nil;
}
//
//    // 设置开始时间戳；
//    public void startTimer() {
- (void)startTimer
{
    //        mTimerStarted = Utils.now();
    
    //	return nil;
}
//
//
//    /**
//     * Time limit for answering in milliseconds.
//     * 从当前卡片所在的牌组配置中获得回答问题的时间限制
//     */
//    public int timeLimit() {
- (NSInteger)timeLimit
{
    //        JSONObject conf = mCol.getDecks().confForDid(mODid == 0 ? mDid : mODid);
    //        try {
    //            return conf.getInt("maxTaken") * 1000;
    //        } catch (JSONException e) {
    //            throw new RuntimeException(e);
    //        }
    
    return nil;
}
//
//    // 是否显示计时器
//    public boolean shouldShowTimer() {
- (BOOL)shouldShowTimer
{
    //        try {
    //            return mCol.getDecks().confForDid(mODid == 0 ? mDid : mODid).getInt("timer") != 0;
    //        } catch (JSONException e) {
    //            throw new RuntimeException(e);
    //        }
    
    return nil;
}
//
//
//    /*
//     * Time taken to answer card, in integer MS.
//     * 此卡片这次学习花费的时间
//     */
//    public int timeTaken() {
- (NSInteger)timeTaken
{
    //        int total = (int) ((Utils.now() - mTimerStarted) * 1000);
    //        return Math.min(total, timeLimit());
    
    return nil;
}
//
//    // 如果当前的卡片模板索引号不再笔记类型的可用模板索引号内，则说明该卡片是空的；
//    public boolean isEmpty() {
- (BOOL)isEmpty
{
    //        ArrayList<Integer> ords = mCol.getModels().availOrds(model(), Utils.joinFields(note().getFields()));
    //        return !ords.contains(mOrd);
    
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
//    // 获得问题；
//    public String qSimple() {
- (NSString *)qSimple
{
    //        return _getQA(false).get("q");
    
    return nil;
}
//
//
//    /*
//     * Returns the answer with anything before the <hr id=answer> tag removed
//     * 只返回纯粹的答案，不要带问题
//     */
//    public String getPureAnswer() {
- (NSString *)getPureAnswer
{
    //        String s = _getQA(false).get("a");
    //        String target = "<hr id=answer>";
    //        int pos = s.indexOf(target);
    //        if (pos == -1) {
    //            return s;
    //        }
    //        return s.substring(pos + target.length()).trim();
    
    return nil;
}
//
//    /**
//     * Save the currently elapsed reviewing time so it can be restored on resume.
//     *
//     * Use this method whenever a review session (activity) has been paused. Use the resumeTimer()
//     * method when the session resumes to start counting review time again.
//     * 当学习过程中暂停了，比如打进一个电话，或是其他行为中断了当前的学习，这时候要把学习这张卡片所用的时间暂时保存，等下次返回回来复习的时候再恢复；
//     */
//    public void stopTimer() {
- (void)stopTimer
{
    //        mElapsedTime = Utils.now() - mTimerStarted;
    
    //	return nil;
}
//
//
//    /**
//     * Resume the timer that counts the time spent reviewing this card.
//     *
//     * Unlike the desktop client, AnkiDroid must pause and resume the process in the middle of
//     * reviewing. This method is required to keep track of the actual amount of time spent in
//     * the reviewer and *must* be called on resume before any calls to timeTaken() take place
//     * or the result of timeTaken() will be wrong.
//     * 当恢复学习状态的时候，恢复上次的学习这张卡片消耗的时间，并开始计时，累加
//     */
//    public void resumeTimer() {
- (void)resumeTimer
{
    //        mTimerStarted = Utils.now() - mElapsedTime;
    
    //	return nil;
}
- (void)setTimerStartedWithtimeStarted:(NSNumber *)timeStarted
{
    //
    //    public long getId() {
    //        return mId;
    
    //	return nil;
}

//getId这个方法找不到，您自己匹配吧！
//
//
//    public void setMod(long mod) {
- (void)setModWithmod:(NSInteger)mod
{
    //        mMod = mod;
    
    //	return nil;
}
//
//
//    public void setUsn(int usn) {
- (void)setUsnWithusn:(NSInteger)usn
{
    //        mUsn = usn;
    
    //	return nil;
}
//
//
//    public long getNid() {
- (NSInteger)getNid
{
    //        return mNid;
    
    return nil;
}
//
//
//    public int getType() {
- (NSInteger)getType
{
    //        return mType;
    
    return nil;
}
//
//
//    public void setType(int type) {
- (void)setTypeWithtype:(NSInteger)type
{
    //        mType = type;
    
    //	return nil;
}
//
//
//    public void setLeft(int left) {
- (void)setLeftWithleft:(NSInteger)left
{
    //        mLeft = left;
    
    //	return nil;
}
//
//
//    public int getLeft() {
- (NSInteger)getLeft
{
    //        return mLeft;
    
    return nil;
}
//
//
//    public int getQueue() {
- (NSInteger)getQueue
{
    //        return mQueue;
    
    return nil;
}
//
//
//    public void setQueue(int queue) {
- (void)setQueueWithqueue:(NSInteger)queue
{
    //        mQueue = queue;
    
    //	return nil;
}
//
//
//    public long getODue() {
- (NSInteger)getODue
{
    //        return mODue;
    
    return nil;
}
//
//
//    public void setODid(long odid) {
- (void)setODidWithodid:(NSInteger)odid
{
    //        mODid = odid;
    
    //	return nil;
}
//
//
//    public long getODid() {
- (NSInteger)getODid
{
    //        return mODid;
    
    return nil;
}
//
//
//    public void setODue(long odue) {
- (void)setODueWithodue:(NSInteger)odue
{
    //        mODue = odue;
    
    //	return nil;
}
//
//
//    public long getDue() {
- (NSInteger)getDue
{
    //        return mDue;
    
    return nil;
}
//
//
//    public void setDue(long due) {
- (void)setDueWithdue:(NSInteger)due
{
    //        mDue = due;
    
    //	return nil;
}
//
//
//    public int getIvl() {
- (NSInteger)getIvl
{
    //        return mIvl;
    
    return nil;
}
//
//
//    public void setIvl(int ivl) {
- (void)setIvlWithivl:(NSInteger)ivl
{
    //        mIvl = ivl;
    
    //	return nil;
}
//
//
//    public int getFactor() {
- (NSInteger)getFactor
{
    //        return mFactor;
    
    return nil;
}
//
//
//    public void setFactor(int factor) {
- (void)setFactorWithfactor:(NSInteger)factor
{
    //        mFactor = factor;
    
    //	return nil;
}
//
//
//    public int getReps() {
- (NSInteger)getReps
{
    //        return mReps;
    
    return nil;
}
//
//
//    public int setReps(int reps) {
- (NSInteger)setRepsWithreps:(NSInteger)reps
{
    //        return mReps = reps;
    
    return nil;
}
//
//
//    public int getLapses() {
- (NSInteger)getLapses
{
    //        return mLapses;
    
    return nil;
}
//
//
//    public void setLapses(int lapses) {
- (void)setLapsesWithlapses:(NSInteger)lapses
{
    //        mLapses = lapses;
    
    //	return nil;
}
//
//
//    public void setNid(long nid) {
- (void)setNidWithnid:(NSInteger)nid
{
    //        mNid = nid;
    
    //        return nil;
}
//
//
//    public void setOrd(int ord) {
- (void)setOrdWithord:(NSInteger)ord
{
    //        mOrd = ord;
    
    //	return nil;
}
//
//
//    public int getOrd() {
- (NSInteger)getOrd
{
    //        return mOrd;
    
    return nil;
}
//
//
//    public void setDid(long did) {
- (void)setDidWithdid:(NSInteger)did
{
    //        mDid = did;
    
    
}
//
//
//    public long getDid() {
- (NSInteger)getDid
{
    //        return mDid;
    
    return nil;
}
//
//
//    public boolean getWasNew() {
- (BOOL)getWasNew
{
    //        return mWasNew;
    
    return nil;
}
//
//
//    public void setWasNew(boolean wasNew) {
- (void)setWasNewWithwasNew:(BOOL)wasNew
{
    //        mWasNew = wasNew;
    
    
}
//
//
//    public int getLastIvl() {
- (NSInteger)getLastIvl
{
    //        return mLastIvl;
    
    return nil;
}
//
//
//    public void setLastIvl(int ivl) {
- (void)setLastIvlWithivl:(NSInteger)ivl
{
    //        mLastIvl = ivl;
    
    
}
//
//
//    // Needed for tests
//    public Collection getCol() {
- (XCollection *)getCol
{
    //        return mCol;
    
    return nil;
}
//
//
//    // Needed for tests
//    public void setCol(Collection col) {
- (void)setColWithcol:(XCollection *)col
{
    //        mCol = col;
    
    //	return nil;
}
//
//    // 要显示计时器吗？
//    public boolean showTimer() {
- (BOOL)showTimer
{
    //        return mCol.getDecks().confForDid(mODid == 0 ? mDid : mODid).optInt("timer", 1) != 0;
    
    return nil;
}

//copy这个方法找不到，您自己匹配吧！

//discription这个方法找不到，您自己匹配吧！


@end