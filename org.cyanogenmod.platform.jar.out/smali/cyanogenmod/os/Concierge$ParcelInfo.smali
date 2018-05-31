.class public final Lcyanogenmod/os/Concierge$ParcelInfo;
.super Ljava/lang/Object;
.source "Concierge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/os/Concierge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelInfo"
.end annotation


# instance fields
.field private mCreation:Z

.field private mParcel:Landroid/os/Parcel;

.field private mParcelableSize:I

.field private mParcelableVersion:I

.field private mSizePosition:I

.field private mStartPosition:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mCreation:Z

    .line 104
    iput-boolean v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mCreation:Z

    .line 105
    iput-object p1, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcelableVersion:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcelableSize:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mStartPosition:I

    .line 103
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelableVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v2, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mCreation:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mCreation:Z

    .line 113
    iput-object p1, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    .line 114
    iput p2, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcelableVersion:I

    .line 118
    iget-object v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcelableVersion:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mSizePosition:I

    .line 123
    iget-object v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mStartPosition:I

    .line 111
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 3

    .prologue
    .line 139
    iget-boolean v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mCreation:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v1, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mStartPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcelableSize:I

    .line 142
    iget-object v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mSizePosition:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 143
    iget-object v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcelableSize:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mStartPosition:I

    iget v2, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcelableSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mStartPosition:I

    iget v2, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcelableSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public getParcelVersion()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcyanogenmod/os/Concierge$ParcelInfo;->mParcelableVersion:I

    return v0
.end method
