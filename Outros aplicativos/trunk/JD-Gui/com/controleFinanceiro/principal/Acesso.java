package com.controleFinanceiro.principal;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageButton;
import com.controleFinanceiro.usuario.RepositorioUsuario;
import com.controleFinanceiro.usuario.RepositorioUsuarioScript;

public class Acesso
  extends Activity
{
  public static RepositorioUsuario repositorio;
  private EditText campoSenha;
  private String senha;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903040);
    EditText localEditText = (EditText)findViewById(2131099650);
    this.campoSenha = localEditText;
    repositorio = new RepositorioUsuarioScript(this);
    String str = repositorio.recuperaSenha(1);
    this.senha = str;
    if (this.senha.equals(""))
    {
      Intent localIntent = new Intent(this, Principal.class);
      startActivity(localIntent);
      finish();
    }
    ImageButton localImageButton1 = (ImageButton)findViewById(2131099652);
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Acesso.this.setResult(0);
        Acesso.this.finish();
      }
    };
    localImageButton1.setOnClickListener(local1);
    ImageButton localImageButton2 = (ImageButton)findViewById(2131099651);
    View.OnClickListener local2 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        String str1 = Acesso.this.campoSenha.getText().toString();
        String str2 = Acesso.this.senha;
        if (str1.equals(str2))
        {
          Acesso localAcesso1 = Acesso.this;
          Intent localIntent = new Intent(localAcesso1, Principal.class);
          Acesso.this.startActivity(localIntent);
          Acesso.this.finish();
          return;
        }
        Acesso localAcesso2 = Acesso.this;
        AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(localAcesso2);
        AlertDialog.Builder localBuilder2 = localBuilder1.setIcon(2130837506);
        AlertDialog.Builder localBuilder3 = localBuilder1.setTitle(2131034212);
        DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int) {}
        };
        AlertDialog.Builder localBuilder4 = localBuilder1.setPositiveButton("OK", local1);
        AlertDialog localAlertDialog = localBuilder1.show();
      }
    };
    localImageButton2.setOnClickListener(local2);
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.principal.Acesso
 * JD-Core Version:    0.7.0.1
 */