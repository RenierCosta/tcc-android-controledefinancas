package com.controleFinanceiro.empresa;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Toast;

public class EditarEmpresa
  extends Activity
{
  static final int RESULT_EXCLUIR = 2;
  static final int RESULT_SALVAR = 1;
  private ImageButton btLigar;
  private EditText campoEMP_CH_TELEFONE;
  private EditText campoEMP_ST_NOME;
  private int id;
  
  protected Empresa buscarEmpresa(long paramLong)
  {
    return CadastroEmpresa.repositorio.buscarEmpresa(paramLong);
  }
  
  public void excluir()
  {
    if (this.id != 0)
    {
      long l = this.id;
      excluirEmpresa(l);
    }
    Intent localIntent = new Intent();
    setResult(-1, localIntent);
    finish();
  }
  
  protected void excluirEmpresa(long paramLong)
  {
    int i = CadastroEmpresa.repositorio.deletar(paramLong);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903047);
    EditText localEditText1 = (EditText)findViewById(2131099684);
    this.campoEMP_ST_NOME = localEditText1;
    EditText localEditText2 = (EditText)findViewById(2131099685);
    this.campoEMP_CH_TELEFONE = localEditText2;
    ImageButton localImageButton1 = (ImageButton)findViewById(2131099689);
    this.btLigar = localImageButton1;
    this.btLigar.setVisibility(4);
    this.id = 0;
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      int i = localBundle.getInt("_id");
      this.id = i;
      if (this.id != 0)
      {
        long l = this.id;
        Empresa localEmpresa = buscarEmpresa(l);
        EditText localEditText3 = this.campoEMP_ST_NOME;
        String str1 = localEmpresa.EMP_ST_NOME;
        localEditText3.setText(str1);
        EditText localEditText4 = this.campoEMP_CH_TELEFONE;
        String str2 = localEmpresa.EMP_CH_TELEFONE;
        localEditText4.setText(str2);
        this.btLigar.setVisibility(0);
      }
    }
    Button localButton1 = (Button)findViewById(2131099687);
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EditarEmpresa.this.setResult(0);
        EditarEmpresa.this.finish();
      }
    };
    localButton1.setOnClickListener(local1);
    Button localButton2 = (Button)findViewById(2131099686);
    View.OnClickListener local2 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EditarEmpresa.this.salvar();
      }
    };
    localButton2.setOnClickListener(local2);
    Button localButton3 = (Button)findViewById(2131099688);
    if (this.id == 0) {
      localButton3.setVisibility(4);
    }
    for (;;)
    {
      this.btLigar.setImageResource(17301645);
      ImageButton localImageButton2 = this.btLigar;
      View.OnClickListener local4 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (PhoneNumberUtils.isWellFormedSmsAddress(EditarEmpresa.this.campoEMP_CH_TELEFONE.getText().toString())) {
            try
            {
              Intent localIntent1 = new Intent("android.intent.action.CALL");
              StringBuilder localStringBuilder = new StringBuilder("tel:");
              Editable localEditable = EditarEmpresa.this.campoEMP_CH_TELEFONE.getText();
              Uri localUri = Uri.parse(localEditable);
              Intent localIntent2 = localIntent1.setData(localUri);
              EditarEmpresa.this.startActivity(localIntent1);
              return;
            }
            catch (ActivityNotFoundException localActivityNotFoundException)
            {
              int i = Log.e("Ligação", "Falha", localActivityNotFoundException);
              return;
            }
          }
          EditarEmpresa localEditarEmpresa = EditarEmpresa.this;
          String str = EditarEmpresa.this.getString(2131034194);
          Toast.makeText(localEditarEmpresa, str, 1).show();
        }
      };
      localImageButton2.setOnClickListener(local4);
      return;
      View.OnClickListener local3 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          EditarEmpresa localEditarEmpresa = EditarEmpresa.this;
          AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(localEditarEmpresa);
          AlertDialog.Builder localBuilder2 = localBuilder1.setIcon(2130837506);
          AlertDialog.Builder localBuilder3 = localBuilder1.setTitle(2131034174);
          DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              EditarEmpresa.this.excluir();
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
  }
  
  protected void onPause()
  {
    super.onPause();
    setResult(0);
    finish();
  }
  
  public void salvar()
  {
    if (this.campoEMP_ST_NOME.getText().toString().equals(""))
    {
      String str1 = getString(2131034195);
      Toast.makeText(this, str1, 1).show();
      return;
    }
    Empresa localEmpresa = new Empresa();
    if (this.id != 0)
    {
      int i = this.id;
      localEmpresa.id = i;
    }
    String str2 = this.campoEMP_ST_NOME.getText().toString();
    localEmpresa.EMP_ST_NOME = str2;
    String str3 = this.campoEMP_CH_TELEFONE.getText().toString();
    localEmpresa.EMP_CH_TELEFONE = str3;
    salvarEmpresa(localEmpresa);
    String str4 = getString(2131034178);
    Toast.makeText(this, str4, 1).show();
    Intent localIntent = new Intent();
    setResult(-1, localIntent);
    finish();
  }
  
  protected void salvarEmpresa(Empresa paramEmpresa)
  {
    RepositorioEmpresa localRepositorioEmpresa = CadastroEmpresa.repositorio;
    long l = RepositorioEmpresa.salvar(paramEmpresa);
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.empresa.EditarEmpresa
 * JD-Core Version:    0.7.0.1
 */