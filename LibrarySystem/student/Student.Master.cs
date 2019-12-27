using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibrarySystem.student
{
    public partial class Student : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] == null)
            {
                Response.Redirect("../login.aspx");
            }
            //lb_side_name.Text = Session["user"].ToString();
        }
    }
}