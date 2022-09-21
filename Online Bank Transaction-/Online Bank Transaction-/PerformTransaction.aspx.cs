using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Web.Util;
using System.Runtime.Remoting.Messaging;

namespace Online_Bank_Transaction_

{
    public partial class PerformTransaction : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
               
        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Common.GetConnectionsString());
            cmd = new SqlCommand(@" Insert into PerformTransaction(AccountNumber,UserName,Amount)
                     values(@AccountNumber,@UserName,,@Amount)", con);
            cmd.Parameters.AddWithValue("@AccountNumber", txtAccountNumber.Text.Trim());
            cmd.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());         
            cmd.Parameters.AddWithValue("@Amount", txtAmount.Text.Trim());
            try
            {
                con.Open();
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    Response.Redirect("Login.aspx", false);
                }
                else
                {
                    error.InnerText = " Invalid input.";
                }
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("violation of UNIQUE KEY Constrains "))
                {
                    error.InnerText = "User name already exist.";
                }
                else
                {
                    Response.Write("<script>alert(' Error - " + ex.Message + " ');</script>");
                }
            }
            finally
            {
                con.Close();
            }
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}