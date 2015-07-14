package br.com.reniercosta.napontadolapis.Activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import br.com.reniercosta.napontadolapis.R;

public class LoginActivity extends Activity {
  
  private EditText edtUsuario;
  private EditText edtSenha;
  private Button btnEntrar;
  
  @Override
  protected void onCreate(Bundle savedInstanceState) {   
    super.onCreate(savedInstanceState);    
    setContentView(R.layout.login_activity);
    CarregarComponentesDaTela();
  }
  
  @Override
  protected void onPause() {    
    super.onPause();
    this.finish();
  }
  
  private void CarregarComponentesDaTela(){
    
    edtUsuario = (EditText) findViewById(R.id.edtUsuario);
    edtSenha = (EditText) findViewById(R.id.edtSenha);
    btnEntrar = (Button) findViewById(R.id.btnEntrar);
  }
  
  public void btnEntrarOnClick(View v){
    String usuarioInformado = edtUsuario.getText().toString();
    String senhaInformada = edtSenha.getText().toString();
    
    if(("leitor".equals(usuarioInformado)) && ("123".equals(senhaInformada))){
      //vai para dashboard_activity
    }
    else
      Toast.makeText(this, getString(R.string.erro_autenticacao), Toast.LENGTH_SHORT).show();                
  }
  
}
