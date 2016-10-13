using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog
{
    public partial class contactob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BorrarDatos();
            }
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            string cadena = ConfigurationManager.ConnectionStrings["DBZ"].ConnectionString;
            using (SqlConnection cnx = new SqlConnection(cadena))
            {

                cnx.Open();
                SqlCommand cmd = new SqlCommand("SPINSERTARDATOS1", cnx);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Nombre", nombre.Text);
                cmd.Parameters.AddWithValue("@Email", email.Text);
                cmd.Parameters.AddWithValue("@Mensaje", TextArea1.InnerText);
                cmd.ExecuteNonQuery();

                nombre.Text = "";
                email.Text = "";
                TextArea1.InnerText = "";
                cnx.Close();
            }
        }
        public void BorrarDatos()
        {
            nombre.Text = "";
            email.Text = "";
            TextArea1.InnerText = "";
        }

        protected void Borrar_Click(object sender, EventArgs e)
        {
            BorrarDatos();
        }
    }
}