.class public final Lcom/controleFinanceiro/categoria/Categoria$Categorias;
.super Ljava/lang/Object;
.source "Categoria.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/controleFinanceiro/categoria/Categoria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Categorias"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "CAT_ST_DESCRICAO ASC"

.field public static final cat_in_tipo:Ljava/lang/String; = "CAT_IN_TIPO"

.field public static final cat_st_descricao:Ljava/lang/String; = "CAT_ST_DESCRICAO"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method
