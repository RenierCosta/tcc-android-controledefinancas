.class Lcom/controleFinanceiro/conta/CadastroConta$1;
.super Landroid/app/AlertDialog;
.source "CadastroConta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/conta/CadastroConta;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/conta/CadastroConta;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/conta/CadastroConta;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/conta/CadastroConta$1;->this$0:Lcom/controleFinanceiro/conta/CadastroConta;

    .line 80
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/conta/CadastroConta$1;)Lcom/controleFinanceiro/conta/CadastroConta;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/controleFinanceiro/conta/CadastroConta$1;->this$0:Lcom/controleFinanceiro/conta/CadastroConta;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lcom/controleFinanceiro/conta/CadastroConta$1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 85
    .local v0, "btOkSobre":Landroid/widget/Button;
    new-instance v1, Lcom/controleFinanceiro/conta/CadastroConta$1$1;

    invoke-direct {v1, p0}, Lcom/controleFinanceiro/conta/CadastroConta$1$1;-><init>(Lcom/controleFinanceiro/conta/CadastroConta$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method
