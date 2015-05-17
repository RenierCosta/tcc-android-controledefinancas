.class Lcom/controleFinanceiro/configuracao/Configuracao$2;
.super Ljava/lang/Object;
.source "Configuracao.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/configuracao/Configuracao;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/configuracao/Configuracao;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/configuracao/Configuracao;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$2;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/configuracao/Configuracao$2;)Lcom/controleFinanceiro/configuracao/Configuracao;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$2;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$2;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "alerta":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 80
    const v1, 0x7f050044

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 81
    const v1, 0x7f050045

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 82
    const-string v1, "OK"

    new-instance v2, Lcom/controleFinanceiro/configuracao/Configuracao$2$1;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/configuracao/Configuracao$2$1;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    const-string v1, "Cancelar"

    new-instance v2, Lcom/controleFinanceiro/configuracao/Configuracao$2$2;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/configuracao/Configuracao$2$2;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 102
    return-void
.end method
