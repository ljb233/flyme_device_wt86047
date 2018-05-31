.class final Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
.super Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;
.source "KeyguardExternalViewProviderService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderImpl"
.end annotation


# instance fields
.field private mAskedShow:Z

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mShouldShow:Z

.field private final mWindow:Landroid/view/Window;

.field final synthetic this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;


# direct methods
.method static synthetic -get0(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -set0(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    return p1
.end method

.method static synthetic -wrap0(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->updateVisibility()V

    return-void
.end method

.method public constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;)V
    .locals 2
    .param p1, "this$1"    # Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;
    .param p2, "provider"    # Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    .prologue
    .line 146
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    invoke-direct {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;-><init>()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mShouldShow:Z

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    .line 144
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 143
    iput-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 147
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    .line 148
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 149
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->onCreateView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 152
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->getWindowType()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 153
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->getWindowFlags()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 154
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 155
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 146
    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mShouldShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 270
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void

    .line 271
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public alterWindow(IIIIZLandroid/graphics/Rect;)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "visible"    # Z
    .param p6, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 233
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;IIIIZLandroid/graphics/Rect;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method protected final collapseNotificationPanel()V
    .locals 6

    .prologue
    .line 304
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 305
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 306
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .line 308
    .local v1, "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;->collapseNotificationPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 312
    .end local v1    # "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 303
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 445
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 442
    return-void
.end method

.method public onAttach(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$1;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$1;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    .prologue
    .line 394
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 395
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 396
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .line 398
    .local v1, "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;->onAttachedToWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 402
    .end local v1    # "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 393
    return-void
.end method

.method public onBouncerShowing(Z)V
    .locals 2
    .param p1, "showing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;

    invoke-direct {v1, p0, p1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetach()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$2;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$2;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 6

    .prologue
    .line 407
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 408
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 409
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .line 411
    .local v1, "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;->onDetachedFromWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 415
    .end local v1    # "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 406
    return-void
.end method

.method public onKeyguardDismissed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$4;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$4;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method public onKeyguardShowing(Z)V
    .locals 2
    .param p1, "screenOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;

    invoke-direct {v1, p0, p1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 419
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public onScreenTurnedOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$7;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$7;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$6;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$6;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 384
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 390
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V
    .locals 1
    .param p1, "callback"    # Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .prologue
    .line 260
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 259
    return-void
.end method

.method protected final requestDismiss()Z
    .locals 7

    .prologue
    .line 276
    const/4 v4, 0x1

    .line 277
    .local v4, "ret":Z
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 278
    .local v0, "N":I
    const/4 v3, 0x0

    .end local v4    # "ret":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 279
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .line 281
    .local v1, "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;->requestDismiss()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v4, v5

    .line 278
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 285
    .end local v1    # "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 286
    return v4
.end method

.method protected final requestDismissAndStartActivity(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 290
    const/4 v4, 0x1

    .line 291
    .local v4, "ret":Z
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 292
    .local v0, "N":I
    const/4 v3, 0x0

    .end local v4    # "ret":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 293
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .line 295
    .local v1, "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1, p1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;->requestDismissAndStartActivity(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v4, v5

    .line 292
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 299
    .end local v1    # "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 300
    return v4
.end method

.method protected final setInteractivity(Z)V
    .locals 6
    .param p1, "isInteractive"    # Z

    .prologue
    .line 316
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 317
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 318
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .line 320
    .local v1, "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1, p1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;->setInteractivity(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 324
    .end local v1    # "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 315
    return-void
.end method

.method public unregisterCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V
    .locals 1
    .param p1, "callback"    # Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .prologue
    .line 265
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 264
    return-void
.end method
