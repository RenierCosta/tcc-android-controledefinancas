.class public Lcom/controleFinanceiro/configuracao/Configuracao;
.super Landroid/app/Activity;
.source "Configuracao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/controleFinanceiro/configuracao/Configuracao$ExportDatabaseFileTask;,
        Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;
    }
.end annotation


# static fields
.field static final RESULT_EXCLUIR:I = 0x2

.field static final RESULT_SALVAR:I = 0x1

.field protected static db:Landroid/database/sqlite/SQLiteDatabase;

.field public static repositorio:Lcom/controleFinanceiro/usuario/RepositorioUsuario;


# instance fields
.field private alterarSenha:Landroid/widget/Button;

.field private btVoltar:Landroid/widget/Button;

.field private campoConfirmacaoSenha:Landroid/widget/EditText;

.field private campoSenha:Landroid/widget/EditText;

.field private fazerBackup:Landroid/widget/Button;

.field private janelaAlterarSenha:Landroid/app/AlertDialog;

.field private restaurarBackup:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/configuracao/Configuracao;)Z
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/controleFinanceiro/configuracao/Configuracao;->isExternalStorageAvail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/controleFinanceiro/configuracao/Configuracao;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->janelaAlterarSenha:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/controleFinanceiro/configuracao/Configuracao;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->campoSenha:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$3(Lcom/controleFinanceiro/configuracao/Configuracao;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->campoConfirmacaoSenha:Landroid/widget/EditText;

    return-void
.end method

.method private isExternalStorageAvail()Z
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public fecharJanelaSenha()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->janelaAlterarSenha:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 292
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->setContentView(I)V

    .line 54
    new-instance v2, Lcom/controleFinanceiro/usuario/RepositorioUsuarioScript;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/usuario/RepositorioUsuarioScript;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/controleFinanceiro/configuracao/Configuracao;->repositorio:Lcom/controleFinanceiro/usuario/RepositorioUsuario;

    .line 56
    const v2, 0x7f06000c

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->fazerBackup:Landroid/widget/Button;

    .line 57
    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->restaurarBackup:Landroid/widget/Button;

    .line 58
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->alterarSenha:Landroid/widget/Button;

    .line 59
    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->btVoltar:Landroid/widget/Button;

    .line 61
    iget-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->fazerBackup:Landroid/widget/Button;

    new-instance v3, Lcom/controleFinanceiro/configuracao/Configuracao$1;

    invoke-direct {v3, p0}, Lcom/controleFinanceiro/configuracao/Configuracao$1;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->restaurarBackup:Landroid/widget/Button;

    new-instance v3, Lcom/controleFinanceiro/configuracao/Configuracao$2;

    invoke-direct {v3, p0}, Lcom/controleFinanceiro/configuracao/Configuracao$2;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->alterarSenha:Landroid/widget/Button;

    new-instance v3, Lcom/controleFinanceiro/configuracao/Configuracao$3;

    invoke-direct {v3, p0}, Lcom/controleFinanceiro/configuracao/Configuracao$3;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 129
    .local v0, "factorySenha":Landroid/view/LayoutInflater;
    const v2, 0x7f03000c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "viewSenha":Landroid/view/View;
    new-instance v2, Lcom/controleFinanceiro/configuracao/Configuracao$4;

    invoke-direct {v2, p0, p0}, Lcom/controleFinanceiro/configuracao/Configuracao$4;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->janelaAlterarSenha:Landroid/app/AlertDialog;

    .line 155
    iget-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->janelaAlterarSenha:Landroid/app/AlertDialog;

    const v3, 0x7f02000b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 156
    iget-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->janelaAlterarSenha:Landroid/app/AlertDialog;

    const v3, 0x7f050012

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 157
    iget-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->janelaAlterarSenha:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 158
    iget-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->btVoltar:Landroid/widget/Button;

    new-instance v3, Lcom/controleFinanceiro/configuracao/Configuracao$5;

    invoke-direct {v3, p0}, Lcom/controleFinanceiro/configuracao/Configuracao$5;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method

.method public salvarSenha()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 296
    iget-object v1, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->campoSenha:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->campoConfirmacaoSenha:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    new-instance v0, Lcom/controleFinanceiro/usuario/Usuario;

    invoke-direct {v0}, Lcom/controleFinanceiro/usuario/Usuario;-><init>()V

    .line 299
    .local v0, "usuario":Lcom/controleFinanceiro/usuario/Usuario;
    iput v3, v0, Lcom/controleFinanceiro/usuario/Usuario;->id:I

    .line 300
    iget-object v1, p0, Lcom/controleFinanceiro/configuracao/Configuracao;->campoSenha:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/controleFinanceiro/usuario/Usuario;->USU_ST_SENHA:Ljava/lang/String;

    .line 303
    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/configuracao/Configuracao;->salvarSenha(Lcom/controleFinanceiro/usuario/Usuario;)V

    .line 306
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->setResult(ILandroid/content/Intent;)V

    .line 310
    invoke-virtual {p0}, Lcom/controleFinanceiro/configuracao/Configuracao;->fecharJanelaSenha()V

    .line 315
    .end local v0    # "usuario":Lcom/controleFinanceiro/usuario/Usuario;
    :goto_0
    return-void

    .line 313
    :cond_0
    const v1, 0x7f05004d

    invoke-virtual {p0, v1}, Lcom/controleFinanceiro/configuracao/Configuracao;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected salvarSenha(Lcom/controleFinanceiro/usuario/Usuario;)V
    .locals 1
    .param p1, "usuario"    # Lcom/controleFinanceiro/usuario/Usuario;

    .prologue
    .line 318
    sget-object v0, Lcom/controleFinanceiro/configuracao/Configuracao;->repositorio:Lcom/controleFinanceiro/usuario/RepositorioUsuario;

    invoke-virtual {v0, p1}, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->salvar(Lcom/controleFinanceiro/usuario/Usuario;)J

    .line 319
    return-void
.end method
