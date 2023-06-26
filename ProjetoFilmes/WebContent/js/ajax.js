function enviarDados() {
  var dados = document.getElementById('dados').innerHTML;

  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      // Lógica para o que você deseja fazer com a resposta do servidor
      console.log("Dados enviados com sucesso!");
    }
  };
  xhttp.open("POST", "seu_arquivo.jsp", true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send("dados=" + encodeURIComponent(dados));
}
