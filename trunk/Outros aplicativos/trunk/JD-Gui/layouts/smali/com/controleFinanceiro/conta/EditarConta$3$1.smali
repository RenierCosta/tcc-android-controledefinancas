.class Lcom/controleFinanceiro/conta/EditarConta$3$1;
.super Ljava/lang/Object;
.source "EditarConta.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/conta/EditarConta$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/controleFinanceiro/conta/EditarConta$3;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/conta/EditarConta$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/conta/EditarConta$3$1;->this$1:Lcom/controleFinanceiro/conta/EditarConta$3;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/controleFinanceiro/conta/EditarConta$3$1;->this$1:Lcom/controleFinanceiro/conta/EditarConta$3;

    # getter for: Lcom/controleFinanceiro/conta/EditarConta$3;->this$0:Lcom/controleFinanceiro/conta/EditarConta;
    invoke-static {v0}, Lcom/controleFinanceiro/conta/EditarConta$3;->access$0(Lcom/controleFinanceiro/conta/EditarConta$3;)Lcom/controleFinanceiro/conta/EditarConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/controleFinanceiro/conta/EditarConta;->excluir()V

    .line 101
    return-void
.end method
