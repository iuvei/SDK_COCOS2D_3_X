.class public Lcom/adobe/air/AndroidStageText;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidStageText$RestrictFilter;,
        Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;,
        Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;,
        Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;
    }
.end annotation


# static fields
.field private static final ALIGN_Center:I = 0x2

.field private static final ALIGN_End:I = 0x5

.field private static final ALIGN_Justify:I = 0x3

.field private static final ALIGN_Left:I = 0x0

.field private static final ALIGN_Right:I = 0x1

.field private static final ALIGN_Start:I = 0x4

.field private static final AUTO_CAP_All:I = 0x3

.field private static final AUTO_CAP_None:I = 0x0

.field private static final AUTO_CAP_Sentence:I = 0x2

.field private static final AUTO_CAP_Word:I = 0x1

.field private static final FOCUS_DOWN:I = 0x3

.field private static final FOCUS_NONE:I = 0x1

.field private static final FOCUS_UP:I = 0x2

.field private static final KEYBOARDTYPE_Contact:I = 0x4

.field private static final KEYBOARDTYPE_Default:I = 0x0

.field private static final KEYBOARDTYPE_Email:I = 0x5

.field private static final KEYBOARDTYPE_Number:I = 0x3

.field private static final KEYBOARDTYPE_Punctuation:I = 0x1

.field private static final KEYBOARDTYPE_Url:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidStageText"

.field private static final RETURN_KEY_Default:I = 0x0

.field private static final RETURN_KEY_Done:I = 0x1

.field private static final RETURN_KEY_Go:I = 0x2

.field private static final RETURN_KEY_Next:I = 0x3

.field private static final RETURN_KEY_Search:I = 0x4


# instance fields
.field private enterKeyDispatched:Z

.field private mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mAlign:I

.field private mAutoCapitalize:I

.field private mAutoCorrect:Z

.field private mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

.field private mBackgroundColor:I

.field private mBold:Z

.field private mBorderColor:I

.field private mBounds:Landroid/graphics/Rect;

.field private mClip:Landroid/view/ViewGroup;

.field private mClipBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDisableInteraction:Z

.field private mDisplayAsPassword:Z

.field private mEditable:Z

.field private mFont:Ljava/lang/String;

.field private mFontSize:I

.field private mGlobalBounds:Landroid/graphics/Rect;

.field private mInContentMenu:Z

.field private mInternalReference:J

.field private mItalic:Z

.field private mKeyboardType:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLocale:Ljava/lang/String;

.field private mMaxChars:I

.field private mMenuInvoked:Z

.field private mMultiline:Z

.field private mNotifyLayoutComplete:Z

.field private mRestrict:Ljava/lang/String;

.field private mReturnKeyLabel:I

.field private mSavedKeyListener:Landroid/text/method/KeyListener;

.field private mScaleFactor:D

.field private mSelectionChanged:Z

.field private mTextColor:I

.field private mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

.field private mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

.field private mViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Z)V
    .locals 8

    const/4 v7, -0x1

    const/high16 v1, -0x1000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mClip:Landroid/view/ViewGroup;

    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    iput-boolean v6, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    iput v1, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    iput v7, p0, Lcom/adobe/air/AndroidStageText;->mBackgroundColor:I

    iput v1, p0, Lcom/adobe/air/AndroidStageText;->mBorderColor:I

    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;-><init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v0, v6}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setFillViewport(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v0, v6, v5}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    new-instance v0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;-><init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidStageText;->setFontSize(I)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v6}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setSingleLine(Z)V

    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v5}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setHorizontallyScrolling(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidStageText;)J
    .locals 2

    iget-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AndroidStageText;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/adobe/air/AndroidStageText;JII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/air/AndroidStageText;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->dispatchCompleteEvent(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/air/AndroidStageText;JI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidStageText;->dispatchFocusIn(JI)V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/air/AndroidStageText;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->dispatchChangeEvent(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    return v0
.end method

.method static synthetic access$902(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    return p1
.end method

.method private applyFilters()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-array v0, v0, [Landroid/text/InputFilter;

    iget v3, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eqz v3, :cond_2

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    :goto_1
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/adobe/air/AndroidStageText$RestrictFilter;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;-><init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private native dispatchChangeEvent(J)V
.end method

.method private native dispatchCompleteEvent(J)V
.end method

.method private native dispatchFocusIn(JI)V
.end method

.method private native dispatchFocusOut(JI)V
.end method

.method private getShapeForBounds(Landroid/graphics/Rect;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    return-object v0
.end method

.method private native handleKeyEvent(JII)Z
.end method

.method private native invokeSoftKeyboard(J)V
.end method

.method private refreshGlobalBounds(Z)V
    .locals 2

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    new-instance v1, Lcom/adobe/air/AndroidStageText$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$2;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setInputType()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/16 v0, 0x12

    :goto_0
    and-int/lit8 v2, v0, 0xf

    if-ne v2, v1, :cond_1

    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    if-eqz v1, :cond_0

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setRawInputType(I)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void

    :cond_3
    const/16 v0, 0x81

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    packed-switch v0, :pswitch_data_1

    move v0, v1

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x21

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_4
    or-int/lit16 v0, v0, 0x2000

    goto :goto_1

    :pswitch_5
    or-int/lit16 v0, v0, 0x4000

    goto :goto_1

    :pswitch_6
    or-int/lit16 v0, v0, 0x1000

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 5

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->removeFromStage()V

    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    new-instance v1, Lcom/adobe/air/AndroidStageText$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidStageText$1;-><init>(Lcom/adobe/air/AndroidStageText;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public adjustViewBounds(DDDDD)V
    .locals 9

    new-instance v2, Landroid/graphics/Rect;

    double-to-int v3, p1

    double-to-int v4, p3

    add-double v6, p1, p5

    double-to-int v5, v6

    add-double v6, p3, p7

    double-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iget-wide v2, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    cmpl-double v2, p9, v2

    if-eqz v2, :cond_0

    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    iget v2, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    invoke-virtual {p0, v2}, Lcom/adobe/air/AndroidStageText;->setFontSize(I)V

    :cond_0
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mClip:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_1
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public assignFocus()V
    .locals 3

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    iget-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V

    return-void
.end method

.method public captureSnapshot(II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-wide v4, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    div-double v4, v8, v4

    double-to-float v3, v4

    iget-wide v4, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    div-double v4, v8, v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->isHorizontalScrollBarEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->isVerticalScrollBarEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v5, v10}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setHorizontalScrollBarEnabled(Z)V

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v5, v10}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVerticalScrollBarEnabled(Z)V

    :try_start_0
    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v5, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1, v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setHorizontalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1, v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVerticalScrollBarEnabled(Z)V

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public clearFocus()V
    .locals 3

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->clearFocus()V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public clearRestrict()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    return-void
.end method

.method public destroyInternals()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->removeFromStage()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    return-void
.end method

.method public getAlign()I
    .locals 1

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    return v0
.end method

.method public getAutoCapitalize()I
    .locals 1

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgColor:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBorderColor:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    return v0
.end method

.method public getKeyboardType()I
    .locals 1

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxChars()I
    .locals 1

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    return v0
.end method

.method public getRestrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnKeyLabel()I
    .locals 1

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    return v0
.end method

.method public getSelectionActiveIndex()I
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getSelectionAnchorIndex()I
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    return v0
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public removeClip()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public removeFromStage()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->didRemoveOverlay()V

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V

    :cond_1
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-void
.end method

.method public resetGlobalBounds()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public selectRange(II)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->length()I

    move-result v1

    if-gez p1, :cond_2

    move p1, v0

    :cond_0
    :goto_0
    if-gez p2, :cond_3

    move p2, v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setSelection(II)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void

    :cond_2
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_3
    if-le p2, v1, :cond_1

    move p2, v1

    goto :goto_1
.end method

.method public setAlign(I)V
    .locals 2

    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoCapitalize(I)V
    .locals 1

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    :cond_0
    return-void
.end method

.method public setAutoCorrect(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    :cond_0
    return-void
.end method

.method public setBackground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget-boolean v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iput-boolean p1, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->setBkgColor(I)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setBold(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    return-void
.end method

.method public setBorder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget-boolean v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iput-boolean p1, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderColor(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->setBorderColor(I)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setClipBounds(DDDD)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, p1

    double-to-int v2, p3

    add-double v4, p1, p5

    double-to-int v3, v4

    add-double v4, p3, p7

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public setDisableInteraction(Z)V
    .locals 5

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v3, v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    :goto_2
    invoke-virtual {v2, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public setDisplayAsPassword(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public setEditable(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mFont:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    return-void
.end method

.method public setFontSize(I)V
    .locals 4

    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setInternalReference(J)V
    .locals 1

    iput-wide p1, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    return-void
.end method

.method public setKeyboardType(I)V
    .locals 0

    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public setMaxChars(I)V
    .locals 1

    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    :cond_0
    return-void
.end method

.method public setRestrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    return-void
.end method

.method public setReturnKeyLabel(I)V
    .locals 2

    const/4 v0, 0x0

    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setImeOptions(I)V

    return-void

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_0
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_0
.end method

.method public setTextColor(IIII)V
    .locals 2

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget v1, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public updateTypeface()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mFont:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void

    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateViewBoundsWithKeyboard(I)J
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v1

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ne v1, v0, :cond_0

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_0
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    if-gtz v0, :cond_1

    move-wide v0, v4

    goto :goto_0

    :cond_1
    if-gt v0, v1, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method
