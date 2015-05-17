.class public Lcom/controleFinanceiro/usuario/Usuario;
.super Ljava/lang/Object;
.source "Usuario.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/controleFinanceiro/usuario/Usuario$Usuarios;
    }
.end annotation


# static fields
.field public static colunas:[Ljava/lang/String;


# instance fields
.field public USU_ST_SENHA:Ljava/lang/String;

.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "USU_ST_SENHA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/controleFinanceiro/usuario/Usuario;->colunas:[Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "USU_ST_SENHA"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/controleFinanceiro/usuario/Usuario;->id:I

    .line 28
    iput-object p2, p0, Lcom/controleFinanceiro/usuario/Usuario;->USU_ST_SENHA:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "USU_ST_SENHA"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/controleFinanceiro/usuario/Usuario;->USU_ST_SENHA:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Senha: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/controleFinanceiro/usuario/Usuario;->USU_ST_SENHA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
