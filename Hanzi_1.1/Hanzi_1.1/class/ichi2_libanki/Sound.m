#import "Sound.h"
#import "XCollection.h"


#import "Note.h"
#import "Card.h"
#import "Decks.h"
#import "Models.h"
#import "Media.h"
#import "Tags.h"
#import "AnkiDb.h"


@implementation Sound

//
//    /**
//     * Listener to handle audio focus. Currently blank because we're not respecting losing focus from other apps.
//     */
//    private static AudioManager.OnAudioFocusChangeListener afChangeListener = new AudioManager.OnAudioFocusChangeListener() {
//        public void onAudioFocusChange(int focusChange) {

//	return nil;
//}
//
//
//    // Clears current sound paths; call before parseSounds() calls
//    public void resetSounds() {
- (void)resetSounds
{
//        mSoundPaths.clear();

//	return nil;
}
//
//    /**
//     * resetSounds removes lists of sounds
//     * @param which -- One of the subset flags, such as Sound.SOUNDS_QUESTION
//     */
//    public void resetSounds(int which) {
- (void)resetSoundsWithwhich:(NSInteger)which
{
//        mSoundPaths.remove(which);

//	return nil;
}
//
//
//    /**
//     * The function addSounds() parses content for sound files, and stores entries to the filepaths for them,
//     * categorized as belonging to the front (question) or back (answer) of cards. Note that all sounds embedded in
//     * the content will be given the same base categorization of question or answer. Additionally, the result is to be
//     * sorted by the order of appearance on the card.
//     * @param soundDir -- base path to the media files
//     * @param content -- parsed for sound entries, the entries expected in display order
//     * @param qa -- the base categorization of the sounds in the content, Sound.SOUNDS_QUESTION or Sound.SOUNDS_ANSWER
//     */
//    public void addSounds(String soundDir, String content, int qa) {
- (void)addSoundsWithsoundDir:(NSString *)soundDir content:(NSString *)content qa:(NSInteger)qa
{
//        Matcher matcher = sSoundPattern.matcher(content);
//        // While there is matches of the pattern for sound markers
//        while (matcher.find()) {
//            // Create appropriate list if needed; list must not be empty so long as code does no check
//            if (!mSoundPaths.containsKey(qa)) {
//                mSoundPaths.put(qa, new ArrayList<String>());
//            }
//
//            // Get the sound file name
//            String sound = matcher.group(1).trim();
//
//            // Construct the sound path and store it
//            mSoundPaths.get(qa).add(getSoundPath(soundDir, sound));
//        }

//	return nil;
}
//
//    /**
//     * makeQuestionAnswerSoundList creates a single list of both the question and answer audio only if it does not
//     * already exist. It's intended for lazy evaluation, only in the rare cases when both sides are fully played
//     * together, which even when configured as supported may not be instigated
//     * @return True if a non-null list was created, or false otherwise
//     */
//    public Boolean makeQuestionAnswerList() {
- (Boolean *)makeQuestionAnswerList
{
//        // if combined list already exists, don't recreate
//        if (mSoundPaths.containsKey(Sound.SOUNDS_QUESTION_AND_ANSWER)) {
//            return false; // combined list already exists
//        }
//
//        // make combined list only if necessary to avoid an empty combined list
//        if (mSoundPaths.containsKey(Sound.SOUNDS_QUESTION) || mSoundPaths.containsKey(Sound.SOUNDS_ANSWER)) {
//            // some list exists to place into combined list
//            mSoundPaths.put(Sound.SOUNDS_QUESTION_AND_ANSWER, new ArrayList<String>());
//        } else { // no need to make list
//            return false;
//        }
//
//        ArrayList<String> combinedSounds = mSoundPaths.get(Sound.SOUNDS_QUESTION_AND_ANSWER);
//
//        if (mSoundPaths.containsKey(Sound.SOUNDS_QUESTION)) {
//            combinedSounds.addAll(mSoundPaths.get(Sound.SOUNDS_QUESTION));
//        }
//        if (mSoundPaths.containsKey(Sound.SOUNDS_ANSWER)) {
//            combinedSounds.addAll(mSoundPaths.get(Sound.SOUNDS_ANSWER));
//        }
//
//        return true;

	return nil;
}
//
//    /**
//     * expandSounds takes content with embedded sound file placeholders and expands them to reference the actual media
//     * file
//     *
//     * @param soundDir -- the base path of the media files
//     * @param content -- card content to be rendered that may contain embedded audio
//     * @return -- the same content but in a format that will render working play buttons when audio was embedded
//     */
//    public static String expandSounds(String soundDir, String content) {
+ (NSString *)expandSoundsWithsoundDir:(NSString *)soundDir content:(NSString *)content
{
//        StringBuilder stringBuilder = new StringBuilder();
//        String contentLeft = content;
//
//        Timber.d("expandSounds");
//
//        Matcher matcher = sSoundPattern.matcher(content);
//        // While there is matches of the pattern for sound markers
//        while (matcher.find()) {
//            // Get the sound file name
//            String sound = matcher.group(1).trim();
//
//            // Construct the sound path
//            String soundPath = getSoundPath(soundDir, sound);
//
//            // Construct the new content, appending the substring from the beginning of the content left until the
//            // beginning of the sound marker
//            // and then appending the html code to add the play button
//            String button;
//            if (CompatHelper.getSdkVersion() >= Build.VERSION_CODES.GINGERBREAD_MR1) {
//                button = "<img src='file:///android_res/drawable/inline_play_button.png' width='32' height='32' />";
//            } else {
//                button = "<img src='file:///android_asset/media_playback_start2.png' />";
//            }
//            String soundMarker = matcher.group();
//            int markerStart = contentLeft.indexOf(soundMarker);
//            stringBuilder.append(contentLeft.substring(0, markerStart));
//            stringBuilder.append("<a class='replaybutton' href=\"playsound:" + soundPath + "\">"
//                    + "<span style='padding:5px;'>"+ button
//                    + "</span></a>");
//            contentLeft = contentLeft.substring(markerStart + soundMarker.length());
//            Timber.d("Content left = %s", contentLeft);
//        }
//
//        // unused code related to tts support taken out after v2.2alpha55
//        // if/when tts support is considered complete, these comment lines serve no purpose
//
//        stringBuilder.append(contentLeft);
//
//        return stringBuilder.toString();

	return nil;
}
//
//
//    /**
//     * Plays the sounds for the indicated sides
//     * @param qa -- One of Sound.SOUNDS_QUESTION, Sound.SOUNDS_ANSWER, or Sound.SOUNDS_QUESTION_AND_ANSWER
//     */
//    public void playSounds(int qa) {
- (void)playSoundsWithqa:(NSInteger)qa
{
//        // If there are sounds to play for the current card, start with the first one
//        if (mSoundPaths != null && mSoundPaths.containsKey(qa)) {
//            playSound(mSoundPaths.get(qa).get(0), new PlayAllCompletionListener(qa));
//        } else if (mSoundPaths != null && qa == Sound.SOUNDS_QUESTION_AND_ANSWER) {
//            if (makeQuestionAnswerList()) {
//                playSound(mSoundPaths.get(qa).get(0), new PlayAllCompletionListener(qa));
//            }
//        }

//	return nil;
}
//
//    /**
//     * Plays the given sound or video and sets playAllListener if available on media player to start next media
//     * @param soundPath
//     * @param playAllListener
//     */
//    public void playSound(String soundPath, OnCompletionListener playAllListener) {
- (void)playSoundWithsoundPath:(NSString *)soundPath playAllListener:(NSObject *)playAllListener
{
//        playSound(soundPath, playAllListener, null);

//	return nil;
}

//playSound-soundPath-playAllListener-VideoView这个方法找不到，您自己匹配吧！
//                // Provide a VideoView to the MediaPlayer if valid video file
//                if (isVideo && videoView != null) {
//                    mMediaPlayer.setDisplay(videoView.getHolder());
//                    mMediaPlayer.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() {
//                        @Override
//                        public void onVideoSizeChanged(MediaPlayer mp, int width, int height) {
- (void)onVideoSizeChangedWithmp:(NSObject *)mp width:(NSInteger)width height:(NSInteger)height
{
//                            configureVideo(videoView, width, height);

//	return nil;
}
//                // Setup the MediaPlayer
//                mMediaPlayer.setDataSource(AnkiDroidApp.getInstance().getApplicationContext(), soundUri);
//                mMediaPlayer.setAudioStreamType(AudioManager.STREAM_MUSIC);
//                mMediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
//                    @Override
//                    public void onPrepared(MediaPlayer mp) {
- (void)onPreparedWithmp:(NSObject *)mp
{
//                        mMediaPlayer.start();

//	return nil;
}
//
//    private static void configureVideo(VideoView videoView, int videoWidth, int videoHeight) {
+ (void)configureVideoWithvideoView:(NSObject *)videoView videoWidth:(NSInteger)videoWidth videoHeight:(NSInteger)videoHeight
{
//        // get the display
//        Context context = AnkiDroidApp.getInstance().getApplicationContext();
//        WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
//        Display display = wm.getDefaultDisplay();
//        // adjust the size of the video so it fits on the screen
//        float videoProportion = (float) videoWidth / (float) videoHeight;
//        int screenWidth = display.getWidth();
//        int screenHeight = display.getHeight();
//        float screenProportion = (float) screenWidth / (float) screenHeight;
//        android.view.ViewGroup.LayoutParams lp = videoView.getLayoutParams();
//
//        if (videoProportion > screenProportion) {
//            lp.width = screenWidth;
//            lp.height = (int) ((float) screenWidth / videoProportion);
//        } else {
//            lp.width = (int) (videoProportion * (float) screenHeight);
//            lp.height = screenHeight;
//        }
//        videoView.setLayoutParams(lp);

//	return nil;
}
//
//    public void notifyConfigurationChanged(VideoView videoView) {
- (void)notifyConfigurationChangedWithvideoView:(NSObject *)videoView
{
//        if (mMediaPlayer != null) {
//            configureVideo(videoView, mMediaPlayer.getVideoWidth(), mMediaPlayer.getVideoHeight());
//        }

//	return nil;
}

//init-qa这个方法找不到，您自己匹配吧！
//
//
//        @Override
//        public void onCompletion(MediaPlayer mp) {
- (void)onCompletionWithmp:(NSObject *)mp
{
//            // If there is still more sounds to play for the current card, play the next one
//            if (mSoundPaths.containsKey(mQa) && mNextToPlay < mSoundPaths.get(mQa).size()) {
//                playSound(mSoundPaths.get(mQa).get(mNextToPlay++), this);
//            } else {
//                releaseSound();
//            }

//	return nil;
}
//
//    /**
//     * Releases the sound.
//     */
//    private void releaseSound() {
- (void)releaseSound
{
//        if (mMediaPlayer != null) {
//            mMediaPlayer.release();
//            mMediaPlayer = null;
//        }
//        if (mAudioManager != null) {
//            mAudioManager.abandonAudioFocus(afChangeListener);
//            mAudioManager = null;
//        }

//	return nil;
}
//
//    /**
//     * Stops the playing sounds.
//     */
//    public void stopSounds() {
- (void)stopSounds
{
//        if (mMediaPlayer != null) {
//            mMediaPlayer.stop();
//            releaseSound();
//        }
//        ReadText.stopTts();

//	return nil;
}
//
//    /**
//     * @param soundDir -- base path to the media files.
//     * @param sound -- path to the sound file from the card content.
//     * @return absolute URI to the sound file.
//     */
//    private static String getSoundPath(String soundDir, String sound) {
+ (NSString *)getSoundPathWithsoundDir:(NSString *)soundDir sound:(NSString *)sound
{
//        if (hasURIScheme(sound)) {
//            return sound;
//        }
//        return soundDir + Uri.encode(sound);

	return nil;
}
//
//    /**
//     * @param path -- path to the sound file from the card content.
//     * @return true if path is well-formed URI and contains URI scheme.
//     */
//    private static boolean hasURIScheme(String path) {
+ (BOOL)hasURISchemeWithpath:(NSString *)path
{
//        Matcher uriMatcher = sUriPattern.matcher(path.trim());
//        return uriMatcher.matches() && uriMatcher.group(2) != null;

	return nil;
}
//
//    /**
//     * Set the context for the calling activity (necessary for playing videos)
//     * @param activityRef
//     */
//    public void setContext(WeakReference<Activity> activityRef) {
- (void)setContextWithactivityRef:(NSObject *)activityRef
{
//        mCallingActivity = activityRef;

//	return nil;
}
//
//    public OnCompletionListener getMediaCompletionListener() {
- (NSObject *)getMediaCompletionListener
{
//        return mPlayAllListener;

	return nil;
}
//
//    public boolean hasQuestion() {
- (BOOL)hasQuestion
{
//        return mSoundPaths.containsKey(Sound.SOUNDS_QUESTION);

	return nil;
}
//    public boolean hasAnswer() {
- (BOOL)hasAnswer
{
//        return mSoundPaths.containsKey(Sound.SOUNDS_ANSWER);

	return nil;
}


@end