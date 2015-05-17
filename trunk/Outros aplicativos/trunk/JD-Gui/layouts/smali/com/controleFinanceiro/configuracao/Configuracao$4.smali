.class Lcom/controleFinanceiro/configuracao/Configuracao$4;
.super Landroid/app/AlertDialog;
.source "Configuracao.java"


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
.method constructor <init>(Lcom/controleFinanceiro/configuracao/Configuracao;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$4;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    .line 131
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/configuracao/Configuracao$4;)Lcom/controleFinanceiro/configuracao/Configuracao;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$4;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 134
    iget-object v3, p0, Lcom/controleFinanceiro/configuracao/Configuracao$4;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    const v2, 0x7f060053

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/configuracao/Configuracao$4;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v3, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->access$2(Lcom/controleFinanceiro/configuracao/Configuracao;Landroid/widget/EditText;)V

    .line 135
    iget-object v3, p0, Lcom/controleFinanceiro/configuracao/Configuracao$4;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    const v2, 0x7f060055

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/configuracao/Configuracao$4;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v3, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->access$3(Lcom/controleFinanceiro/configuracao/Configuracao;Landroid/widget/EditText;)V

    .line 137
    const v2, 0x7f060057

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/configuracao/Configuracao$4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 138
    .local v0, "btCancelarEditarSenha":Landroid/widget/Button;
    new-instance v2, Lcom/controleFinanceiro/configuracao/Configuracao$4$1;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/configuracao/Configuracao$4$1;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao$4;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v2, 0x7f060056

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/configuracao/Configuracao$4;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 147
    .local v1, "btSalvarEditarSenha":Landroid/widget/Button;
    new-instance v2, Lcom/controleFinanceiro/configuracao/Configuracao$4$2;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/configuracao/Configuracao$4$2;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao$4;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method
