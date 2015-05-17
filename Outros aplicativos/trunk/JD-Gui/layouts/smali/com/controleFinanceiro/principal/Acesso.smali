.class public Lcom/controleFinanceiro/principal/Acesso;
.super Landroid/app/Activity;
.source "Acesso.java"


# static fields
.field public static repositorio:Lcom/controleFinanceiro/usuario/RepositorioUsuario;


# instance fields
.field private campoSenha:Landroid/widget/EditText;

.field private senha:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/principal/Acesso;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/controleFinanceiro/principal/Acesso;->campoSenha:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/controleFinanceiro/principal/Acesso;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/controleFinanceiro/principal/Acesso;->senha:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/high16 v3, 0x7f030000

    invoke-virtual {p0, v3}, Lcom/controleFinanceiro/principal/Acesso;->setContentView(I)V

    .line 28
    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Lcom/controleFinanceiro/principal/Acesso;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/controleFinanceiro/principal/Acesso;->campoSenha:Landroid/widget/EditText;

    .line 30
    new-instance v3, Lcom/controleFinanceiro/usuario/RepositorioUsuarioScript;

    invoke-direct {v3, p0}, Lcom/controleFinanceiro/usuario/RepositorioUsuarioScript;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/controleFinanceiro/principal/Acesso;->repositorio:Lcom/controleFinanceiro/usuario/RepositorioUsuario;

    .line 31
    sget-object v3, Lcom/controleFinanceiro/principal/Acesso;->repositorio:Lcom/controleFinanceiro/usuario/RepositorioUsuario;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->recuperaSenha(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/controleFinanceiro/principal/Acesso;->senha:Ljava/lang/String;

    .line 33
    iget-object v3, p0, Lcom/controleFinanceiro/principal/Acesso;->senha:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/controleFinanceiro/principal/Principal;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v2, "minhaAcao":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/principal/Acesso;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/controleFinanceiro/principal/Acesso;->finish()V

    .line 39
    .end local v2    # "minhaAcao":Landroid/content/Intent;
    :cond_0
    const v3, 0x7f060004

    invoke-virtual {p0, v3}, Lcom/controleFinanceiro/principal/Acesso;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 40
    .local v0, "btCancelar":Landroid/widget/ImageButton;
    new-instance v3, Lcom/controleFinanceiro/principal/Acesso$1;

    invoke-direct {v3, p0}, Lcom/controleFinanceiro/principal/Acesso$1;-><init>(Lcom/controleFinanceiro/principal/Acesso;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v3, 0x7f060003

    invoke-virtual {p0, v3}, Lcom/controleFinanceiro/principal/Acesso;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 50
    .local v1, "btEntrar":Landroid/widget/ImageButton;
    new-instance v3, Lcom/controleFinanceiro/principal/Acesso$2;

    invoke-direct {v3, p0}, Lcom/controleFinanceiro/principal/Acesso$2;-><init>(Lcom/controleFinanceiro/principal/Acesso;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
