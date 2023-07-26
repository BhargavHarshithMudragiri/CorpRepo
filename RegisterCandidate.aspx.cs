using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterCandidatePage : System.Web.UI.Page
{
    DataAccessLayer da = new DataAccessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtCompName.Text = Convert.ToString(Session["CompanyName"]);
        txtDept.Text = Convert.ToString(Session["Department"]);
        txtRegDate.Text = DateTime.Now.ToShortDateString();
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        String cname = txtCompName.Text;
        String Dname = txtDept.Text;
        int status;
        int cid = Convert.ToInt32(ddlcandId.SelectedValue);
        DateTime reg = Convert.ToDateTime(txtRegDate.Text);
        int ret = da.insertreg(cname, Dname, cid, reg,out status );
        if (ret > 0)
            Response.Write("<script>alert('inserted')</script>");
        else
            Response.Write("<script>alert('not inserted')</script>");
    }
}
