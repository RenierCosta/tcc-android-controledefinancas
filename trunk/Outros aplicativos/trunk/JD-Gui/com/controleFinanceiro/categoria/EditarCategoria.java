package com.controleFinanceiro.categoria;

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
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

public class EditarCategoria
  extends Activity
{
  static final int RESULT_EXCLUIR = 2;
  static final int RESULT_SALVAR = 1;
  private EditText Ed_Descricao;
  private Spinner Sp_Tipo;
  private String[] comboTipo;
  private int id;
  
  public EditarCategoria()
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = "Entrada";
    arrayOfString[1] = "Saída";
    this.comboTipo = arrayOfString;
  }
  
  protected Categoria buscarCategoria(long paramLong)
  {
    return CadastroCategoria.repositorio.buscarCategoria(paramLong);
  }
  
  public void excluir()
  {
    if (this.id != 0)
    {
      long l = this.id;
      excluirCategoria(l);
    }
    Intent localIntent = new Intent();
    setResult(-1, localIntent);
    finish();
  }
  
  protected void excluirCategoria(long paramLong)
  {
    int i = CadastroCategoria.repositorio.deletar(paramLong);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903045);
    EditText localEditText1 = (EditText)findViewById(2131099665);
    this.Ed_Descricao = localEditText1;
    Spinner localSpinner1 = (Spinner)findViewById(2131099667);
    this.Sp_Tipo = localSpinner1;
    String[] arrayOfString = this.comboTipo;
    ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 17367048, arrayOfString);
    localArrayAdapter.setDropDownViewResource(17367049);
    this.Sp_Tipo.setAdapter(localArrayAdapter);
    this.id = 0;
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      int i = localBundle.getInt("_id");
      this.id = i;
      if (this.id != 0)
      {
        long l = this.id;
        Categoria localCategoria = buscarCategoria(l);
        Spinner localSpinner2 = this.Sp_Tipo;
        int j = localCategoria.CAT_IN_TIPO;
        localSpinner2.setSelection(j);
        EditText localEditText2 = this.Ed_Descricao;
        String str = localCategoria.CAT_ST_DESCRICAO;
        localEditText2.setText(str);
      }
    }
    Button localButton1 = (Button)findViewById(2131099669);
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EditarCategoria.this.setResult(0);
        EditarCategoria.this.finish();
      }
    };
    localButton1.setOnClickListener(local1);
    Button localButton2 = (Button)findViewById(2131099668);
    View.OnClickListener local2 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EditarCategoria.this.salvar();
      }
    };
    localButton2.setOnClickListener(local2);
    Button localButton3 = (Button)findViewById(2131099670);
    if (this.id == 0)
    {
      localButton3.setVisibility(4);
      return;
    }
    View.OnClickListener local3 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EditarCategoria localEditarCategoria = EditarCategoria.this;
        AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(localEditarCategoria);
        AlertDialog.Builder localBuilder2 = localBuilder1.setIcon(2130837506);
        AlertDialog.Builder localBuilder3 = localBuilder1.setTitle(2131034174);
        DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            EditarCategoria.this.excluir();
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
    if (this.Ed_Descricao.getText().toString().equals(""))
    {
      String str1 = getString(2131034177);
      Toast.makeText(this, str1, 1).show();
      return;
    }
    Categoria localCategoria = new Categoria();
    if (this.id != 0)
    {
      int i = this.id;
      localCategoria.id = i;
    }
    String str2 = this.Ed_Descricao.getText().toString();
    localCategoria.CAT_ST_DESCRICAO = str2;
    int j = this.Sp_Tipo.getSelectedItemPosition();
    localCategoria.CAT_IN_TIPO = j;
    salvarCategoria(localCategoria);
    Intent localIntent = new Intent();
    setResult(-1, localIntent);
    String str3 = getString(2131034178);
    Toast.makeText(this, str3, 1).show();
    finish();
  }
  
  protected void salvarCategoria(Categoria paramCategoria)
  {
    RepositorioCategoria localRepositorioCategoria = CadastroCategoria.repositorio;
    long l = RepositorioCategoria.salvar(paramCategoria);
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.categoria.EditarCategoria
 * JD-Core Version:    0.7.0.1
 */