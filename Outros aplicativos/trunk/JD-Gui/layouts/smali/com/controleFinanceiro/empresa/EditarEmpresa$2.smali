.class Lcom/controleFinanceiro/empresa/EditarEmpresa$2;
.super Ljava/lang/Object;
.source "EditarEmpresa.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/empresa/EditarEmpresa;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/empresa/EditarEmpresa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$2;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$2;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    invoke-virtual {v0}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->salvar()V

    .line 72
    return-void
.end method
