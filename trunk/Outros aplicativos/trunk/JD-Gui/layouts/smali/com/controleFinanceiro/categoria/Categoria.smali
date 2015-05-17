.class public Lcom/controleFinanceiro/categoria/Categoria;
.super Ljava/lang/Object;
.source "Categoria.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/controleFinanceiro/categoria/Categoria$Categorias;
    }
.end annotation


# static fields
.field public static colunas:[Ljava/lang/String;


# instance fields
.field public CAT_IN_TIPO:I

.field public CAT_ST_DESCRICAO:Ljava/lang/String;

.field public CAT_ST_TIPO:Ljava/lang/String;

.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CAT_ST_DESCRICAO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CAT_IN_TIPO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/controleFinanceiro/categoria/Categoria;->colunas:[Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "CAT_ST_DESCRICAO"    # Ljava/lang/String;
    .param p3, "CAT_IN_TIPO"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/controleFinanceiro/categoria/Categoria;->id:I

    .line 26
    iput-object p2, p0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_IN_TIPO:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "CAT_ST_DESCRICAO"    # Ljava/lang/String;
    .param p2, "CAT_IN_TIPO"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_IN_TIPO:I

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Descri\u00e7\u00e3o: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Tipo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_IN_TIPO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
