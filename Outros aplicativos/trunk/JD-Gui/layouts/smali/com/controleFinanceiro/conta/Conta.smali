.class public Lcom/controleFinanceiro/conta/Conta;
.super Ljava/lang/Object;
.source "Conta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/controleFinanceiro/conta/Conta$Contas;
    }
.end annotation


# static fields
.field public static colunas:[Ljava/lang/String;


# instance fields
.field public CON_CH_NCONTA:Ljava/lang/String;

.field public CON_IN_AGENCIA:I

.field public CON_RE_VALORATUAL:Ljava/lang/Number;

.field public CON_RE_VALORINICIAL:Ljava/lang/Number;

.field public CON_ST_BANCO:Ljava/lang/String;

.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CON_ST_BANCO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CON_IN_AGENCIA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CON_CH_NCONTA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CON_RE_VALORINICIAL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/controleFinanceiro/conta/Conta;->colunas:[Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "CON_ST_BANCO"    # Ljava/lang/String;
    .param p3, "CON_IN_AGENCIA"    # I
    .param p4, "CON_CH_NCONTA"    # Ljava/lang/String;
    .param p5, "CON_RE_VALORINICIAL"    # Ljava/lang/Number;
    .param p6, "CON_RE_VALORATUAL"    # Ljava/lang/Number;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/controleFinanceiro/conta/Conta;->id:I

    .line 33
    iput-object p2, p0, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/controleFinanceiro/conta/Conta;->CON_IN_AGENCIA:I

    .line 35
    iput-object p4, p0, Lcom/controleFinanceiro/conta/Conta;->CON_CH_NCONTA:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORINICIAL:Ljava/lang/Number;

    .line 37
    iput-object p6, p0, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORATUAL:Ljava/lang/Number;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0
    .param p1, "CON_ST_BANCO"    # Ljava/lang/String;
    .param p2, "CON_IN_AGENCIA"    # I
    .param p3, "CON_CH_NCONTA"    # Ljava/lang/String;
    .param p4, "CON_RE_VALORINICIAL"    # Ljava/lang/Number;
    .param p5, "CON_RE_VALORATUAL"    # Ljava/lang/Number;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/controleFinanceiro/conta/Conta;->CON_IN_AGENCIA:I

    .line 25
    iput-object p3, p0, Lcom/controleFinanceiro/conta/Conta;->CON_CH_NCONTA:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORINICIAL:Ljava/lang/Number;

    .line 27
    iput-object p5, p0, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORATUAL:Ljava/lang/Number;

    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banco: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Ag\u00eancia: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/conta/Conta;->CON_IN_AGENCIA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Conta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/controleFinanceiro/conta/Conta;->CON_CH_NCONTA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Valor Inicial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORINICIAL:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
