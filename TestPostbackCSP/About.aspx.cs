using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace TestPostbackCSP
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "init",
             string.Format(@"var dropdownId = '{0}';", DropDownList1.ClientID), true);


            if (IsPostBack == true)
            {
                //MessageBox.Show("Posted back!");
                if (DropDownList1.SelectedValue == "yes")
                {
                    UpdatePanel1.Visible = true;
                }
                else
                {
                    UpdatePanel1.Visible = false;
                }

                if (DropDownList2.SelectedValue == "yes")
                {
                    UpdatePanel2.Visible = true;
                }
                else
                {
                    UpdatePanel2.Visible = false;
                }
            }
        }

     }
}