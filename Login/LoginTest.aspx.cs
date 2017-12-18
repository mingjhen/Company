using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Web.Services;

public partial class LoginTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void OK_onclick(object sender, EventArgs e)
    {

        //var A = document.getElementById("Account").value;
        //var P = document.getElementById("Password").value;
        //alert("account：" + A + "   password：" + P);
    }
    [WebMethod]
    public static string Account(string a)
    {
        SqlConnection myConn = new SqlConnection("Data Source=60.251.66.42;Initial Catalog=IPDB;Persist Security Info=True;User ID=dba;password=dba");
        myConn.Open();

        return "false";
    }
}