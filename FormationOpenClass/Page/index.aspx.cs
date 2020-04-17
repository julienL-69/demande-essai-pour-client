using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormationOpenClass
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Label1.Text = "JLA application. Demande d'essai V1.2.0 Version du 14 décembre 2017";

            this.ListVolume.Items.Clear();
            this.ListVolume.Items.Add("Tonnes");
            this.ListVolume.Items.Add("kg");
            this.ListVolume.Items.Add("m3");

            this.ListContexte.Items.Clear();
            this.ListContexte.Items.Add("Vente machine");
            this.ListContexte.Items.Add("Essai pour TAF");
            this.ListContexte.Items.Add("Essai Interne");
            this.ListContexte.Items.Add("autres raisons");

            this.ListePrix.Items.Clear();
            this.ListePrix.Items.Add("€/t");
            this.ListePrix.Items.Add("Forfait en €");

            lblmessage.Text = "Votre demande d'essai a été transmise par mail via votre boite outlook.";
            divThankYou.Visible = false;
        }
                

        protected void EnvoiMail_Click1(object sender, EventArgs e)
        {

            //Creation du fichier texte et stocakge dans les docs de l'utilisateur
            //récupéraiton des infos du questionnaire
            string Nom = "Nomclient:" + TxbNomClient.Text;
            string Matiere = "Matiere:" + TxbMatiere.Text;
            string Volume = "Volume:" + TxbVolume.Text + ListVolume.Text;
            string Prix = "Prix:" + TxbPrix.Text + ListePrix.Text;
            string Produitconnu = "Connu:" + RdbProduit.SelectedValue;
            string Danger = "Danger:" + RdbDanger.SelectedValue;
            string Compositon = "Compositon:" + TxbCompo.Text;
            string Objectif = "Objectif:" + TxbObjectif.Text;
            string Raison = "Raison:" + TxbRaison.Text;



            string[] lines = { Nom, Matiere, Volume,Prix,Produitconnu,Danger,Compositon,Objectif,Raison };

            // Set a variable to the My Documents path.
            string mydocpath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);

            // Write the string array to a new file named "WriteLines.txt".
            using (StreamWriter outputFile = new StreamWriter(mydocpath + @"\DemandeEssai.txt"))
            {
                foreach (string line in lines)
                    outputFile.WriteLine(line);

            }

            

            Microsoft.Office.Interop.Outlook.Application app = new Microsoft.Office.Interop.Outlook.Application();
            Microsoft.Office.Interop.Outlook.MailItem mailItem = app.CreateItem(Microsoft.Office.Interop.Outlook.OlItemType.olMailItem);

            //Outlook.MailItem mailItem = (Outlook.MailItem)
            //        this.Application.CreateItem(Outlook.OlItemType.olMailItem);

            mailItem.Subject = "This is the subject";
            mailItem.To = "j.lardant@mtb.fr";
            mailItem.Body = "This is the message.";

            

            mailItem.Attachments.Add(mydocpath + @"\DemandeEssai.txt");//logPath is a string holding path to the log.txt file
            //mailItem.Importance = Outlook.OlImportance.olImportanceHigh;
            mailItem.Display(false);
            mailItem.Send();
            //.Send(mailItem);
            //((app._MailItem)mailItem).Send();

            //Popup de validation de l'envoi du mail et de la pièce jointe
            lblmessage.Text = "Votre demande d'essai a été transmise par mail via votre boite outlook.";
            divThankYou.Visible = true;

            //Onvide tout les champs de DE
            TxbNomClient.Text = "";
            TxbMatiere.Text = "";
            TxbVolume.Text = "";
            TxbPrix.Text = "";
            TxbCompo.Text = "";
            TxbObjectif.Text = "";
            TxbRaison.Text = "";

        }


        protected void Button2_Click1(object sender, EventArgs e)
        {

            
         divThankYou.Visible = false;
        }
    }
}