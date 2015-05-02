package com.controleFinanceiro.configuracao;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.controleFinanceiro.usuario.RepositorioUsuario;
import com.controleFinanceiro.usuario.RepositorioUsuarioScript;
import com.controleFinanceiro.usuario.Usuario;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

public class Configuracao
  extends Activity
{
  static final int RESULT_EXCLUIR = 2;
  static final int RESULT_SALVAR = 1;
  protected static SQLiteDatabase db;
  public static RepositorioUsuario repositorio;
  private Button alterarSenha;
  private Button btVoltar;
  private EditText campoConfirmacaoSenha;
  private EditText campoSenha;
  private Button fazerBackup;
  private AlertDialog janelaAlterarSenha;
  private Button restaurarBackup;
  
  private boolean isExternalStorageAvail()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  public void fecharJanelaSenha()
  {
    this.janelaAlterarSenha.cancel();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903044);
    repositorio = new RepositorioUsuarioScript(this);
    Button localButton1 = (Button)findViewById(2131099660);
    this.fazerBackup = localButton1;
    Button localButton2 = (Button)findViewById(2131099661);
    this.restaurarBackup = localButton2;
    Button localButton3 = (Button)findViewById(2131099662);
    this.alterarSenha = localButton3;
    Button localButton4 = (Button)findViewById(2131099663);
    this.btVoltar = localButton4;
    Button localButton5 = this.fazerBackup;
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (Configuracao.this.isExternalStorageAvail())
        {
          Configuracao localConfiguracao1 = Configuracao.this;
          Configuracao.ExportDatabaseFileTask localExportDatabaseFileTask = new Configuracao.ExportDatabaseFileTask(localConfiguracao1, null);
          String[] arrayOfString = new String[0];
          AsyncTask localAsyncTask = localExportDatabaseFileTask.execute(arrayOfString);
          return;
        }
        Configuracao localConfiguracao2 = Configuracao.this;
        String str = Configuracao.this.getString(2131034179);
        Toast.makeText(localConfiguracao2, str, 0).show();
      }
    };
    localButton5.setOnClickListener(local1);
    Button localButton6 = this.restaurarBackup;
    View.OnClickListener local2 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Configuracao localConfiguracao = Configuracao.this;
        AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(localConfiguracao);
        AlertDialog.Builder localBuilder2 = localBuilder1.setIcon(2130837506);
        AlertDialog.Builder localBuilder3 = localBuilder1.setTitle(2131034180);
        AlertDialog.Builder localBuilder4 = localBuilder1.setMessage(2131034181);
        DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (Configuracao.this.isExternalStorageAvail())
            {
              Configuracao localConfiguracao1 = Configuracao.this;
              Configuracao.ImportDatabaseFileTask localImportDatabaseFileTask = new Configuracao.ImportDatabaseFileTask(localConfiguracao1, null);
              String[] arrayOfString = new String[0];
              AsyncTask localAsyncTask = localImportDatabaseFileTask.execute(arrayOfString);
              return;
            }
            Configuracao localConfiguracao2 = Configuracao.this;
            String str = Configuracao.this.getString(2131034182);
            Toast.makeText(localConfiguracao2, str, 0).show();
          }
        };
        AlertDialog.Builder localBuilder5 = localBuilder1.setPositiveButton("OK", local1);
        DialogInterface.OnClickListener local2 = new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int) {}
        };
        AlertDialog.Builder localBuilder6 = localBuilder1.setNegativeButton("Cancelar", local2);
        AlertDialog localAlertDialog = localBuilder1.show();
      }
    };
    localButton6.setOnClickListener(local2);
    Button localButton7 = this.alterarSenha;
    View.OnClickListener local3 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Configuracao.this.janelaAlterarSenha.show();
      }
    };
    localButton7.setOnClickListener(local3);
    View localView = LayoutInflater.from(this).inflate(2130903052, null);
    AlertDialog local4 = new AlertDialog(this)
    {
      protected void onCreate(Bundle paramAnonymousBundle)
      {
        super.onCreate(paramAnonymousBundle);
        Configuracao localConfiguracao1 = Configuracao.this;
        EditText localEditText1 = (EditText)findViewById(2131099731);
        localConfiguracao1.campoSenha = localEditText1;
        Configuracao localConfiguracao2 = Configuracao.this;
        EditText localEditText2 = (EditText)findViewById(2131099733);
        localConfiguracao2.campoConfirmacaoSenha = localEditText2;
        Button localButton1 = (Button)findViewById(2131099735);
        View.OnClickListener local1 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            Configuracao.this.setResult(0);
            Configuracao.this.fecharJanelaSenha();
          }
        };
        localButton1.setOnClickListener(local1);
        Button localButton2 = (Button)findViewById(2131099734);
        View.OnClickListener local2 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            Configuracao.this.setResult(1);
            Configuracao.this.salvarSenha();
          }
        };
        localButton2.setOnClickListener(local2);
      }
    };
    this.janelaAlterarSenha = local4;
    this.janelaAlterarSenha.setIcon(2130837515);
    this.janelaAlterarSenha.setTitle(2131034130);
    this.janelaAlterarSenha.setView(localView);
    Button localButton8 = this.btVoltar;
    View.OnClickListener local5 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Configuracao.this.setResult(0);
        Configuracao.this.finish();
      }
    };
    localButton8.setOnClickListener(local5);
  }
  
  public void salvarSenha()
  {
    String str1 = this.campoSenha.getText().toString();
    String str2 = this.campoConfirmacaoSenha.getText().toString();
    if (str1.equals(str2))
    {
      Usuario localUsuario = new Usuario();
      localUsuario.id = 1;
      String str3 = this.campoSenha.getText().toString();
      localUsuario.USU_ST_SENHA = str3;
      salvarSenha(localUsuario);
      Intent localIntent = new Intent();
      setResult(-1, localIntent);
      fecharJanelaSenha();
      return;
    }
    String str4 = getString(2131034189);
    Toast.makeText(this, str4, 1).show();
  }
  
  protected void salvarSenha(Usuario paramUsuario)
  {
    long l = repositorio.salvar(paramUsuario);
  }
  
  private class ExportDatabaseFileTask
    extends AsyncTask<String, Void, Boolean>
  {
    private final ProgressDialog dialog;
    
    private ExportDatabaseFileTask()
    {
      ProgressDialog localProgressDialog = new ProgressDialog(Configuracao.this);
      this.dialog = localProgressDialog;
    }
    
    void copyFile(File paramFile1, File paramFile2)
      throws IOException
    {
      FileChannel localFileChannel1 = new FileInputStream(paramFile1).getChannel();
      FileChannel localFileChannel2 = new FileOutputStream(paramFile2).getChannel();
      try
      {
        long l1 = localFileChannel1.size();
        long l2 = localFileChannel1.transferTo(0L, l1, localFileChannel2);
        if (localFileChannel1 != null) {
          localFileChannel1.close();
        }
        if (localFileChannel2 == null) {
          return;
        }
        localFileChannel2.close();
        return;
      }
      finally
      {
        if (localFileChannel1 != null) {
          localFileChannel1.close();
        }
        if (localFileChannel2 != null) {
          localFileChannel2.close();
        }
      }
    }
    
    protected Boolean doInBackground(String... paramVarArgs)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      File localFile1 = Environment.getDataDirectory();
      String str1 = localFile1 + "/data/com.controleFinanceiro/databases/controle_financeiro";
      File localFile2 = new File(str1);
      File localFile3 = Environment.getExternalStorageDirectory();
      File localFile4 = new File(localFile3, "backupControleFinanceiro");
      if (!localFile4.exists()) {
        boolean bool1 = localFile4.mkdirs();
      }
      String str2 = localFile2.getName();
      File localFile5 = new File(localFile4, str2);
      try
      {
        boolean bool2 = localFile5.createNewFile();
        copyFile(localFile2, localFile5);
        Boolean localBoolean1 = Boolean.valueOf(true);
        localBoolean2 = localBoolean1;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Boolean localBoolean2 = Boolean.valueOf(false);
        }
      }
      return localBoolean2;
    }
    
    protected void onPostExecute(Boolean paramBoolean)
    {
      if (this.dialog.isShowing()) {
        this.dialog.dismiss();
      }
      if (paramBoolean.booleanValue())
      {
        Configuracao localConfiguracao1 = Configuracao.this;
        String str1 = Configuracao.this.getString(2131034184);
        Toast.makeText(localConfiguracao1, str1, 1).show();
        return;
      }
      Configuracao localConfiguracao2 = Configuracao.this;
      String str2 = Configuracao.this.getString(2131034185);
      Toast.makeText(localConfiguracao2, str2, 1).show();
    }
    
    protected void onPreExecute()
    {
      ProgressDialog localProgressDialog = this.dialog;
      String str = Configuracao.this.getString(2131034183);
      localProgressDialog.setMessage(str);
      this.dialog.show();
    }
  }
  
  private class ImportDatabaseFileTask
    extends AsyncTask<String, Void, Boolean>
  {
    private final ProgressDialog dialog;
    
    private ImportDatabaseFileTask()
    {
      ProgressDialog localProgressDialog = new ProgressDialog(Configuracao.this);
      this.dialog = localProgressDialog;
    }
    
    void copyFile(File paramFile1, File paramFile2)
      throws IOException
    {
      FileChannel localFileChannel1 = new FileInputStream(paramFile1).getChannel();
      FileChannel localFileChannel2 = new FileOutputStream(paramFile2).getChannel();
      try
      {
        long l1 = localFileChannel1.size();
        long l2 = localFileChannel1.transferTo(0L, l1, localFileChannel2);
        if (localFileChannel1 != null) {
          localFileChannel1.close();
        }
        if (localFileChannel2 == null) {
          return;
        }
        localFileChannel2.close();
        return;
      }
      finally
      {
        if (localFileChannel1 != null) {
          localFileChannel1.close();
        }
        if (localFileChannel2 != null) {
          localFileChannel2.close();
        }
      }
    }
    
    protected Boolean doInBackground(String... paramVarArgs)
    {
      File localFile1 = Environment.getExternalStorageDirectory();
      File localFile2 = new File(localFile1, "backupControleFinanceiro/controle_financeiro");
      StringBuilder localStringBuilder = new StringBuilder();
      File localFile3 = Environment.getDataDirectory();
      String str1 = localFile3 + "/data/com.controleFinanceiro/databases";
      File localFile4 = new File(str1);
      String str2 = localFile2.getName();
      File localFile5 = new File(localFile4, str2);
      try
      {
        boolean bool = localFile5.createNewFile();
        copyFile(localFile2, localFile5);
        Boolean localBoolean1 = Boolean.valueOf(true);
        localBoolean2 = localBoolean1;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Boolean localBoolean2 = Boolean.valueOf(false);
        }
      }
      return localBoolean2;
    }
    
    protected void onPostExecute(Boolean paramBoolean)
    {
      if (this.dialog.isShowing()) {
        this.dialog.dismiss();
      }
      if (paramBoolean.booleanValue())
      {
        Configuracao localConfiguracao1 = Configuracao.this;
        String str1 = Configuracao.this.getString(2131034187);
        Toast.makeText(localConfiguracao1, str1, 1).show();
        return;
      }
      Configuracao localConfiguracao2 = Configuracao.this;
      String str2 = Configuracao.this.getString(2131034188);
      Toast.makeText(localConfiguracao2, str2, 1).show();
    }
    
    protected void onPreExecute()
    {
      ProgressDialog localProgressDialog = this.dialog;
      String str = Configuracao.this.getString(2131034186);
      localProgressDialog.setMessage(str);
      this.dialog.show();
    }
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.configuracao.Configuracao
 * JD-Core Version:    0.7.0.1
 */