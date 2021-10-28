
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="PT-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- CSS -->
    <link rel="stylesheet" href="main.css">
</head>

<body>

    <header>
        <div class="container">
            <h1>Farmacia</h1>
            <nav>
                <ul>
                    <li><a href="cadastro-produto.html">Cadastro Produtos</a></li>
                    <li><a href="cadastro-cliente.html">Cadastro Cliente</a></li>
                    <li><a href="vendas.html">Vendas</a></li>
                    <li><a href="relatorios.html">Relatórios</a></li>
                    <li><a href="login.html">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="card-cadastro-cliente" style="height: 600px;">
        <div class="card-nome">
            <h2>Cadastro Cliente</h2>
        </div>
        <form method="POST" action='ClienteFarmaciaServlet' name="frmCadastroCliente">
            <input type="text" readonly="readonly" name="id" placeholder="ID"
                             value="<c:out value="${cliente.id}"  />" />
            <input
                type="text" name="nome" placeholder="Nome"
                value="<c:out value="${cliente.nome}" />" />
            <input
                type="text" name="CPF" placeholder="CPF"
                value="<c:out value="${cliente.CPF}" />" />
            <input
                type="text" name="telCliente" placeholder="Telefone"
                value="<c:out value="${cliente.telCliente}" />" />
            
            <input type="text" name="email" placeholder="Email"
                           value="<c:out value="${cliente.email}" />" />
            
            <input type="submit" value="Cadastrar" id="input-enviar" />
            <input type="hidden" name="action" value="incluir"/>
        </form>
    </div>

    <footer>
    </footer>

</body>

</html>