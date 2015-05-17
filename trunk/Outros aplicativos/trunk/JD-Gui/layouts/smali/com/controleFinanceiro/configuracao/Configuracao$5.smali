.class Lcom/controleFinanceiro/configuracao/Configuracao$5;
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
    iput-object p1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$5;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$5;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/configuracao/Configuracao;->setResult(I)V

    .line 162
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$5;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    invoke-virtual {v0}, Lcom/controleFinanceiro/configuracao/Configuracao;->finish()V

    .line 163
    return-void
.end method
