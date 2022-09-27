using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            con = new SqlConnection(Common.GetConnectionString());
            cmd = new SqlCommand(@"Select * from Account where AccountNumber = @AccountNumber", con);
            cmd.Parameters.AddWithValue("@AccountNumber", ddlPayeeAccountNumber.SelectedValue);
            con = new SqlConnection(Common.GetConnectionString());
            cmd = new SqlCommand(@" Insert into Transactions(PayeeName,MobileNumber,Amount,Remarks)
                   values(@PayeeName,@MobileNumber,@Amount,@Remarks)", con);
            cmd.Parameters.AddWithValue("@PayeeName", txtPayeeName.Text.Trim());
            cmd.Parameters.AddWithValue("@MobileNo", txtMobileNumber.Text.Trim());
            cmd.Parameters.AddWithValue("@Amount", txtAmount.Text.Trim());
            cmd.Parameters.AddWithValue("@Remarks", txtRemarks.Text.Trim());
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