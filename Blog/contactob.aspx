<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactob.aspx.cs" Inherits="Blog.contactob" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mi BLog Ricardo Lara </title>
    <link rel="shortcut icon" type="image/x-icon" href="foto/favicon1.ico" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="WebLog Ricardo Lara" />
    <meta name="viewport" content="width=device−width, initial−scale=1.0" />
    <link rel="stylesheet" href="../css/estilo.css" type="text/css" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="contenedor">
        <div id="cajaheader"></div>
        <div id="principal">
            <header>
                <div id="logo"></div>
                <h1><span itemprop="name">Ricardo Lara</span></h1>
                <h2><span itemprop="title">Analista de Desarrollo SENA</span></h2>
                <nav>
                    <ul>
                        <li><a href="../index.html">
                            <canvas id="iconoinicio" width="50%" height="50%"></canvas>
                            <br />
                            Inicio</a></li>
                        <li><a href="html/noticiasb.html">
                            <canvas id="icononoticias" width="50%" height="50%"></canvas>
                            <br />
                            Noticias</a></li>
                        <li><a href="html/sobremib.html">


                            <canvas id="iconosobreMi" width="50%" height="50%"></canvas>
                            <br />
                            Sobre mi</a></li>
                        <li><a href="../contactob.aspx">
                            <canvas id="iconocontacto" width="50%" height="50%"></canvas>
                            <br />
                            Contacto</a></li>
                    </ul>
                </nav>
            </header>
            <form runat="server">
                <table border="0">
                    <tr>
                        <td>
                            <p style="text-align: right">Introduce tu nombre</p>
                        </td>
                        <td>                           
                                <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="text-align: right">Introduce tu email</p>
                        </td>
                        <td>
                            <asp:TextBox ID="email" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="text-align: right">
                            Escribe tu mensaje</td>
                        <td>
                            <textarea id="TextArea1" cols="40" rows="7" runat="server" name="mensaje"></textarea>
                        </td>
                    </tr>
                    <tr class="botones">
                        <td></td>
                        <td>
                            <asp:Button ID="Enviar" runat="server" Text="Enviar" OnClick="Enviar_Click" />
                            <asp:Button ID="Borrar" runat="server" Text="Borrar" OnClick="Borrar_Click" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div id="footer">
            <h6>(c) 2016 - WebLog Ricardo Lara</h6>
            <h6>
                <div class="vcard"></div>
                <div><span class="name">Ricardo Lara</span>-<span class="locality">Bogotá</span>-<span class="region">Cundinamarca</span>-<span class="countryname">Colombia</span></div>
                <div>
                    <span class="tel">3102186888</span>-<span class="email">frlara@misena.edu.co</span>
                </div>
            </h6>
            <!--contador de visitas-->
            <script type="text/javascript">
                if (localStorage.pagecount) { localStorage.pagecount = Number(localStorage.pagecount) + 1; } else { localStorage.pagecount = 1; }
                document.write("Has visitado mi pagina  " + localStorage.pagecount + "   veces");
            </script>
            <script type="text/javascript">
                if (sessionStorage.pagecount) { sessionStorage.pagecount = Number(sessionStorage.pagecount) + 1; } else { sessionStorage.pagecount = 1; }
                document.write("En esta sesion has visitado mi pagina:  " + sessionStorage.pagecount + "veces");
            </script>
        </div>
    </div>
</body>
</html>
<script type="text/javascript">

    var miotrocolor = "Gray";
    var micolor = "Black";
    var mitercercolor = "White";
    var escalar = 0.5;
    // Dibujo el icono sobre Mi

    var c = document.getElementById("iconosobreMi");
    var cxt = c.getContext("2d");

    cxt.fillStyle = (micolor);
    cxt.beginPath();
    cxt.arc(escalar * 50, escalar * 25, escalar * 20, 0, Math.PI * 2, true);
    cxt.closePath;
    cxt.fill();

    cxt.fillStyle = (micolor);
    cxt.beginPath();
    cxt.arc(escalar * 50, escalar * 90, escalar * 40, Math.PI, Math.PI * 2, false);
    cxt.closePath;
    cxt.fill();

    // Dibujo el icono contacto

    var c = document.getElementById("iconocontacto");
    var cxt = c.getContext("2d");

    cxt.fillStyle = (miotrocolor);
    cxt.beginPath();
    cxt.arc(escalar * 50 - 10, escalar * 25, escalar * 20, 0, Math.PI * 2, true);
    cxt.closePath;
    cxt.fill();
    cxt.fillStyle = (miotrocolor);
    cxt.beginPath();
    cxt.arc(escalar * 50 - 10, escalar * 90, escalar * 40, Math.PI, Math.PI * 2, false);
    cxt.closePath;
    cxt.fill();
    cxt.fillStyle = (micolor);
    cxt.beginPath();
    cxt.arc(escalar * 50 + 10, escalar * 25, escalar * 20, 0, Math.PI * 2, true);
    cxt.closePath;
    cxt.fill();
    cxt.fillStyle = (micolor);
    cxt.beginPath();
    cxt.arc(escalar * 50 + 10, escalar * 90, escalar * 40, Math.PI, Math.PI * 2, false);
    cxt.closePath;
    cxt.fill();
    // Dibujo el icono Inicio 

    var c = document.getElementById("iconoinicio");
    var cxt = c.getContext("2d");

    cxt.fillStyle = (micolor);
    cxt.beginPath();
    cxt.arc(escalar * 50, escalar * 50, escalar * 40, 0, Math.PI * 2, true);
    cxt.closePath;
    cxt.fill();

    cxt.fillStyle = (mitercercolor);
    cxt.beginPath();
    cxt.arc(escalar * 50, escalar * 50, escalar * 30, 0, Math.PI * 2, true);
    cxt.closePath;
    cxt.fill();


    cxt.fillStyle = (micolor);
    cxt.beginPath();
    cxt.arc(escalar * 50, escalar * 50, escalar * 20, 0, Math.PI * 2, true);
    cxt.closePath;
    cxt.fill();


    // Dibujo el icono Noticias

    var c = document.getElementById("icononoticias");
    var cxt = c.getContext("2d");

    cxt.fillStyle = (micolor);
    cxt.beginPath();
    cxt.arc(escalar * 50, escalar * 50, escalar * 20, 0, Math.PI * 2, true);
    cxt.closePath;
    cxt.fill();

    cxt.fillStyle = (micolor);
    cxt.beginPath();
    cxt.arc(escalar * 50, escalar * 50, escalar * 40, Math.PI, Math.PI * 2, false);
    cxt.closePath;
    cxt.fill();


</script>
