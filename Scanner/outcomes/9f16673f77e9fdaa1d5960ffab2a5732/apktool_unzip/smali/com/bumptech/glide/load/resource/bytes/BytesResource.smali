.class public Lcom/bumptech/glide/load/resource/bytes/BytesResource;
.super Ljava/lang/Object;
.source "BytesResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->bytes:[B

    .line 16
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bytes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->get()[B

    move-result-object v0

    return-object v0
.end method

.method public get()[B
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->bytes:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public recycle()V
    .locals 0

    .line 31
    return-void
.end method
