<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FormationOpenClass.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" type="text/css" href="../Content/StyleS.css" />
    <title>Demande d'essai v1.0</title>
    
</head>

<body>
    <header>

        <div id="titre_principal">
            <div id="logo">
                    <img src="LogoMTB 2012.jpg" alt="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Demande d'essai dématerialisé </strong>
                   
            </div>
        </div>
    </header>

    <br />  

    <form id="form1" runat="server">

<div id="GdBloc">
        <div id="lignetest"> Et voila le début de la demande d'essai : On est pas bien là!!!<br />
            
        </div>

            <div class="block1">
                    <asp:Label ID="Label7" runat="server" Text="Saisir Nom Client"></asp:Label>
                    <asp:TextBox ID="TxbNomClient" runat="server" Width="130px"></asp:TextBox>
                    <asp:Label ID="Label8" runat="server" Text="Matière à traiter"></asp:Label>
                    <asp:TextBox ID="TxbMatiere" runat="server"></asp:TextBox>
                    <asp:Label ID="Label9" runat="server" Text="Volume à traiter"></asp:Label>
                    <asp:TextBox ID="TxbVolume" runat="server" Width="55px"></asp:TextBox>
                    <asp:DropDownList ID="ListVolume" runat="server" OnLoad="Page_Load">
                    </asp:DropDownList>
                    <asp:Label ID="Label10" runat="server" Text="Contexte"></asp:Label>
                    <asp:DropDownList ID="ListContexte" runat="server">
                    </asp:DropDownList>      
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset">
                    <asp:Label ID="Label11" runat="server" Text="Facturation des essais"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Text="Prix"></asp:Label>
                    <asp:TextBox ID="TxbPrix" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="ListePrix" runat="server">
                    </asp:DropDownList>

                </asp:Panel>
            </div>

    <div class="block1">
        <asp:Label ID="LblCap" runat="server" Text="Certificat d'acceptation préalable"></asp:Label>
        <asp:Label ID="Label13" runat="server" Text="Autorisation du produit à etre stocker et traiter sur notre site. Existe-t-il un risque particulier lors de la manipulation des produits!"></asp:Label>


        <table>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Est-ce un produit habituel?"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RdbProduit" runat="server" AutoPostBack="True" Height="37px" Width="161px" RepeatDirection="Horizontal">
                        <asp:ListItem>Oui</asp:ListItem>
                        <asp:ListItem>Non</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>


        <table>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Présence de produit dangeureux"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RdbDanger" runat="server" Height="37px" Width="124px" RepeatDirection="Horizontal">
                        <asp:ListItem>Oui</asp:ListItem>
                        <asp:ListItem>Non</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>

        <table>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Veuillez indiquer la composition du produit.Une information plus complète pourra vous être demandée."></asp:Label>
                </td>
            </tr>
        </table>

        <asp:TextBox ID="TxbCompo" runat="server" Height="87px" Width="350px" TextMode="MultiLine"></asp:TextBox>


    </div>

            <div class="block1">
                <table class="table">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Indiquer en détails les objectifs de l'essai."></asp:Label>
                        </td>
                    </tr>
                </table>

        <asp:TextBox ID="TxbObjectif" runat="server" Height="100px" Width="350px" TextMode="MultiLine"></asp:TextBox>
            
           <table class="table">
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Indiquer POURQUOI l'essai doit etre réalisé:"></asp:Label>
                        </td>
                    </tr>
                </table>

        <asp:TextBox ID="TxbRaison" runat="server" Height="100px" Width="350px" TextMode="MultiLine"></asp:TextBox>
            </div>

    <div class="block1">
                Instruction spécifique de l'essai  <br /> 
                 Détail sur l'essai <br /> 
                 Granulometrie <br /> 
                 Mesure  de pureté/ débit/ simple démo <br /> 
                 Que veux le client: clareté et précision afin d'évaluer le temps de travail <br /> 
                Est ce du standard/ développemnt porcess/ démo ligne <br /> 
            </div>


         <asp:Button ID="EnvoiMail" runat="server" Text="Envoyer la demande d'essai par mail" AutoPostBack="True" OnClick="EnvoiMail_Click1"/>

</div>

<div id="GdBloc2">
        <div id="lignetesté"> Et voila le début de la demande d'essai : On est pas bien là!!!<br />
            
        </div>



    </div>

  



<div style="height:100px"></div>
        
        <footer>
    &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Testage" runat="server" Text="Et un petit site web de demande d'essai, un! "></asp:Label>
</footer>

    <div class="custompopup" id="divThankYou" runat="server">
        <p>
            <asp:Label ID="lblmessage" runat="server"></asp:Label>
        </p>  
        <asp:Button ID="Button2" runat="server" Text="Ok" AutoPostBack="True" OnClick="Button2_Click1" />
    </div>

    </form>

 





</body>
</html>
