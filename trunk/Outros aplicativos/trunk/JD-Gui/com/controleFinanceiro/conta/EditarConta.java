package com.controleFinanceiro.conta;

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
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.controleFinanceiro.lancamento.RepositorioLancamento;
import java.text.NumberFormat;
import java.util.Locale;

public class EditarConta
  extends Activity
{
  static final int RESULT_EXCLUIR = 2;
  static final int RESULT_SALVAR = 1;
  private EditText campoCON_IN_AGENCIA;
  private EditText campoCON_IN_NCONTA;
  private EditText campoCON_RE_VALORATUAL;
  private EditText campoCON_RE_VALORINICIAL;
  private EditText campoCON_ST_BANCO;
  private int id;
  
  protected Conta buscarConta(long paramLong)
  {
    return CadastroConta.repositorio.buscarConta(paramLong);
  }
  
  public void excluir()
  {
    if (this.id != 0)
    {
      long l = this.id;
      excluirConta(l);
    }
    Intent localIntent = new Intent();
    setResult(-1, localIntent);
    finish();
  }
  
  protected void excluirConta(long paramLong)
  {
    int i = CadastroConta.repositorio.deletar(paramLong);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903046);
    EditText localEditText1 = (EditText)findViewById(2131099672);
    this.campoCON_ST_BANCO = localEditText1;
    EditText localEditText2 = (EditText)findViewById(2131099674);
    this.campoCON_IN_AGENCIA = localEditText2;
    EditText localEditText3 = (EditText)findViewById(2131099676);
    this.campoCON_IN_NCONTA = localEditText3;
    EditText localEditText4 = (EditText)findViewById(2131099678);
    this.campoCON_RE_VALORINICIAL = localEditText4;
    EditText localEditText5 = (EditText)findViewById(2131099680);
    this.campoCON_RE_VALORATUAL = localEditText5;
    this.id = 0;
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      int i = localBundle.getInt("_id");
      this.id = i;
      if (this.id != 0)
      {
        long l = this.id;
        Conta localConta = buscarConta(l);
        EditText localEditText6 = this.campoCON_ST_BANCO;
        String str1 = localConta.CON_ST_BANCO;
        localEditText6.setText(str1);
        EditText localEditText7 = this.campoCON_IN_AGENCIA;
        String str2 = String.valueOf(localConta.CON_IN_AGENCIA);
        localEditText7.setText(str2);
        EditText localEditText8 = this.campoCON_IN_NCONTA;
        String str3 = localConta.CON_CH_NCONTA;
        localEditText8.setText(str3);
        Locale localLocale = new Locale("pt", "BR");
        EditText localEditText9 = this.campoCON_RE_VALORINICIAL;
        NumberFormat localNumberFormat1 = NumberFormat.getNumberInstance(localLocale);
        Number localNumber = localConta.CON_RE_VALORINICIAL;
        String str4 = localNumberFormat1.format(localNumber);
        localEditText9.setText(str4);
        int j = this.id;
        float f1 = Float.valueOf(localConta.CON_RE_VALORINICIAL.toString()).floatValue();
        float f2 = RepositorioLancamento.calculaTotalConta(j, f1);
        EditText localEditText10 = this.campoCON_RE_VALORATUAL;
        NumberFormat localNumberFormat2 = NumberFormat.getNumberInstance(localLocale);
        double d = f2;
        String str5 = localNumberFormat2.format(d);
        localEditText10.setText(str5);
      }
    }
    Button localButton1 = (Button)findViewById(2131099682);
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EditarConta.this.setResult(0);
        EditarConta.this.finish();
      }
    };
    localButton1.setOnClickListener(local1);
    Button localButton2 = (Button)findViewById(2131099681);
    View.OnClickListener local2 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EditarConta.this.salvar();
      }
    };
    localButton2.setOnClickListener(local2);
    Button localButton3 = (Button)findViewById(2131099683);
    if (this.id == 0)
    {
      localButton3.setVisibility(4);
      return;
    }
    View.OnClickListener local3 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EditarConta localEditarConta = EditarConta.this;
        AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(localEditarConta);
        AlertDialog.Builder localBuilder2 = localBuilder1.setIcon(2130837506);
        AlertDialog.Builder localBuilder3 = localBuilder1.setTitle(2131034174);
        DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            EditarConta.this.excluir();
          }
        };
        AlertDialog.Builder localBuilder4 = localBuilder1.setPositiveButton(2131034175, local1);
        DialogInterface.OnClickListener local2 = new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int) {}
        };
        AlertDialog.Builder localBuilder5 = localBuilder1.setNegativeButton(2131034176, local2);
        AlertDialog localAlertDialog = localBuilder1.show();
      }
    };
    localButton3.setOnClickListener(local3);
  }
  
  protected void onPause()
  {
    super.onPause();
    setResult(0);
    finish();
  }
  
  public void salvar()
  {
    if (this.campoCON_ST_BANCO.getText().toString().equals(""))
    {
      String str1 = getString(2131034191);
      Toast.makeText(this, str1, 1).show();
      return;
    }
    if (this.campoCON_RE_VALORINICIAL.getText().toString().equals(""))
    {
      String str2 = getString(2131034192);
      Toast.makeText(this, str2, 1).show();
      return;
    }
    try
    {
      if (this.campoCON_IN_AGENCIA.getText().toString().equals("")) {
        this.campoCON_IN_AGENCIA.setText("0");
      }
      Conta localConta = new Conta();
      if (this.id != 0)
      {
        int i = this.id;
        localConta.id = i;
      }
      String str3 = this.campoCON_ST_BANCO.getText().toString();
      localConta.CON_ST_BANCO = str3;
      int j = Integer.parseInt(this.campoCON_IN_AGENCIA.getText().toString());
      localConta.CON_IN_AGENCIA = j;
      String str4 = this.campoCON_IN_NCONTA.getText().toString();
      localConta.CON_CH_NCONTA = str4;
      Float localFloat = Float.valueOf(this.campoCON_RE_VALORINICIAL.getText().toString().replace(".", "").replace(",", "."));
      localConta.CON_RE_VALORINICIAL = localFloat;
      salvarConta(localConta);
      Intent localIntent = new Intent();
      setResult(-1, localIntent);
      String str5 = getString(2131034178);
      Toast.makeText(this, str5, 1).show();
      finish();
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      String str6 = getString(2131034193);
      Toast.makeText(this, str6, 1).show();
    }
  }
  
  protected void salvarConta(Conta paramConta)
  {
    long l = CadastroConta.repositorio.salvar(paramConta);
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.conta.EditarConta
 * JD-Core Version:    0.7.0.1
 */