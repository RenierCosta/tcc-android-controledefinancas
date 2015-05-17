.class public Lcom/controleFinanceiro/empresa/Empresa;
.super Ljava/lang/Object;
.source "Empresa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/controleFinanceiro/empresa/Empresa$Empresas;
    }
.end annotation


# static fields
.field public static colunas:[Ljava/lang/String;


# instance fields
.field public EMP_CH_TELEFONE:Ljava/lang/String;

.field public EMP_ST_NOME:Ljava/lang/String;

.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EMP_ST_NOME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EMP_CH_TELEFONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/controleFinanceiro/empresa/Empresa;->colunas:[Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "EMP_ST_NOME"    # Ljava/lang/String;
    .param p3, "EMP_CH_TELEFONE"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/controleFinanceiro/empresa/Empresa;->id:I

    .line 27
    iput-object p2, p0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "EMP_ST_NOME"    # Ljava/lang/String;
    .param p2, "EMP_CH_TELEFONE"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Empresa: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Telefone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
