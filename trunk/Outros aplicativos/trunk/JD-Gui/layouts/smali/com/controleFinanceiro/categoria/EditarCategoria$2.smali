.class Lcom/controleFinanceiro/categoria/EditarCategoria$2;
.super Ljava/lang/Object;
.source "EditarCategoria.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/categoria/EditarCategoria;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/categoria/EditarCategoria;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/categoria/EditarCategoria;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/categoria/EditarCategoria$2;->this$0:Lcom/controleFinanceiro/categoria/EditarCategoria;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/controleFinanceiro/categoria/EditarCategoria$2;->this$0:Lcom/controleFinanceiro/categoria/EditarCategoria;

    invoke-virtual {v0}, Lcom/controleFinanceiro/categoria/EditarCategoria;->salvar()V

    .line 71
    return-void
.end method
