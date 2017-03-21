using System;
using System.Web.UI;

namespace UniversalSportsHub
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string conn = "ConnectionStrings:unicon";
            //conn = System.Configuration.ConfigurationManager.ConnectionStrings["Conn"].ToString();
            //SqlConnection objsqlconn = new SqlConnection(conn);
            //objsqlconn.Open();

            //SqlCommand objcmd = new SqlCommand("Select * from Employee", objsqlconn);
            //GridView.DataSource = objcmd.ExecuteReader();
            //GridView1.DataBind();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }
    }
}